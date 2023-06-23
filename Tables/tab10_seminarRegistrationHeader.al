table 50110 "CSD Seminar Reg. header"
//CSD1.00 -2018-01-01 -D.E.Veloper
// Chapter6 -Lab 1
// -Created new table
{
    Caption = 'semianer Registration header';

    fields
    {
        field(1; No; Code[50])
        {
            Caption = 'No';


        }
        field(2; "starting date"; Date)
        {
            Caption = 'starting date';
        }
        field(3; "seminar No."; code[20])
        {
            Caption = 'seminar no.';
        }
        field(4; "instructor code"; code[50])
        {
            Caption = 'instructor code';
        }
        field(5; "instructor name"; text[50])
        {
            Caption = 'instructor name';
            //  CalcFormula = lookup(resource.Name where(No = field("instructor Resource No")type=const(person)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "posting date"; Date)
        {
            Caption = 'posting date';

        }
        field(7; "document date"; Date)
        {
            caption = 'document date';
            Editable = false;
        }
        field(8; status; Option)
        {
            OptionMembers = "pending","registered","Canceled";

        }
        field(9; "room reource  no."; code[20])
        {
            caption = 'room resource';


        }
        field(10; "Seminar price"; Decimal)
        {
            caption = 'seminar price';
        }
        field(11; "minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';

        }
        field(12; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(13; "room code resource"; code[40])
        {
            Caption = 'room code resource';

        }
        field(14; "posting No.series"; integer)
        {
            Caption = 'Posting No. series';
            TableRelation = "No. Series";
        }
        field(15; "No.series"; code[10])
        {
            editable = false;
            caption = 'no. series';
            tablerelation = "no. series";
        }


    }

    keys
    {
        key(Pk; "No", "room reource  no.", "seminar No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
    begin

    end;
    // seminarsetup: Record "CSD Seminar Setup";
    //NoSeriesMgt: Codeunit "NoSeriesManagement";

    //if "No" := '' then begin
    //seminarsetup.get;
    //seminarsetup.TESTFIELD("Seminar Registration nos.");
    //NoSeriesMgt.Initseries(Seminarsetup."Seminar Registration nos.", xRec."No. series", 0D, "No");
    //if "posting date" = 0D then "posting date" := WorkDate;
    //"document date" := WorkDate;
    // seminarsetup.get;
    // NoSeriesMgt.SetDefaultSeries("posting No.series", seminarsetup.);




    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        if (CurrFieldNo > 0) then
            TestField(status, status::canceled);

    end;

    trigger OnRename()
    begin

    end;

}