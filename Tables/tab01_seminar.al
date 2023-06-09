table 50101 "CSD Seminar"

{
    Caption = 'seminar';
    fields
    {
        field(10; "No"; code[20])
        {
            Caption = 'No';
            trigger OnValidate()

            begin
                if "NO" <> xRec."No" then begin
                    seminarSetup.GET;
                    NoseriesMgt.TestManual(seminarSetup."Seminar nos");
                    "No.series" := '';
                end;

            end;
        }
        field(20; "Name"; text[50])
        {
            Caption = 'Name';
            trigger OnValidate();

            begin
                if ("search Name" = UpperCase(xRec.Name)) or
                ("Search Name" = '') then
                    "search Name" := Name;
            end;
        }
        field(30; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
        }
        field(40; "minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';

        }
        field(50; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(60; "Search name"; code[50])
        {
            Caption = 'Search name';
        }
        field(70; "Blocked"; Boolean)
        {
            Caption = 'Blocked';
        }
        field(80; "Last Date modified"; Date)
        {
            Caption = 'Last date modified';
            Editable = false;
        }
        field(90; "Comment"; Boolean)
        {
            Caption = 'Comment';
            Editable = false;
            fieldclass = FlowField;
            TableRelation = "No. Series";
            //calcformula=exist("CSD Seminar comment line" 
            //where("Table name"=const("seminar"),
            //"no "=field("no")))
        }
        field(100; "seminar price"; decimal)
        {
            Caption = 'seminar price';
            AutoFormatType = 1;
        }
        field(110; "Gen. prod. posting group"; code[10])
        {
            Caption = 'Gen. prod. posting group';
            TableRelation = "Gen. Product Posting Group";
            trigger OnValidate();

            begin
                if (xRec."Gen. prod. posting group" <> "Gen. prod. posting group") then begin
                    if GenprodPostingGroup.ValidateVatProdPostingGroup(GenprodPostingGroup, "Gen. prod. posting group") then
                        Validate("VAT Prod. posting Group", GenprodPostingGroup."Def. VAT Prod. Posting Group");

                end;

            end;
        }
        field(120; "VAT Prod. posting Group"; code[10])
        {
            caption = 'VAT prod. posting group';
            TableRelation = "VAT product posting group";
        }
        field(130; "No.series"; code[10])
        {
            editable = false;
            caption = 'no. series';
            tablerelation = "no. series";

        }

    }

    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
        key(key1; "search name")
        {

        }
    }

    var
        seminarSetup: Record "CSD Seminar Setup";
        //commentline:record"CSD Seminar comment line";
        seminar: Record "CSD Seminar";
        GenprodPostingGroup: Record "Gen. Product Posting Group";
        NoseriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "No" = '' then begin
            seminarSetup.get;
            seminarSetup.TestField("seminar nos");
            NoseriesMgt.InitSeries(seminarsetup."Seminar nos", xRec."No.series",
            0D, "no", "No.series");
        end;

    end;

    trigger OnModify()
    begin
        "Last Date modified" := today;

    end;

    trigger OnDelete()
    begin
        //commentline.reset;
        //commentline.setrange("table name",
        //commentline."Table name"::seminar);
        //commentline.setrange("no","No");
        //commentline.DeleteAll;

    end;

    trigger OnRename()
    begin
        "Last Date modified" := today;

    end;



    procedure AssistEdit(): Boolean

    begin
        with seminar do begin
            seminar := rec;
            seminarSetup.get;
            seminarsetup.TestField("seminar nos");
            if NoseriesMgt.SelectSeries(seminarSetup."Seminar nos", xRec."No.series", "No.series") then begin
                NoseriesMgt.setseries("NO");
                Rec := seminar;
                exit(true);

            end;


        end;

    end;
}