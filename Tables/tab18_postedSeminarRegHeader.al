table 50118 "CSD posted Seminar Reg. Header"
//CSD1.00 -2018-01-01 -D.E. Veloper
//Chapter 7 -Lab 3-1
{
    Caption = 'posted seminar Reg. Header';

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

        field(15; "No.series"; code[10])
        {
            editable = false;
            caption = 'no. series';
            tablerelation = "no. series";
        }
        field(16; "User Id"; code[50])
        {
            Caption = 'User Id';
            TableRelation = User;
            ValidateTableRelation = false;
        }
        field(17; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source code";
        }
        field(18; comment; Boolean)
        {
            Caption = 'Comment';
            CalcFormula = Exist("CSD Seminar Comment Line" where("Table Name" = const("Posted Seminar registration"), "No" = field("No")));
            Editable = false;
            FieldClass = FlowField;
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

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}