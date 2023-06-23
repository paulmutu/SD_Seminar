table 50133 "CSD Seminar Register"
{
    Caption = 'seminar register';

    fields
    {
        field(1; No; Integer)
        {
            caption = 'No';

        }
        field(2; "From Entry No."; Integer)
        {
            Caption = 'From Entry No.';
        }
        field(3; "To Entry No."; Integer)
        {
            Caption = 'To Entry No.';
        }
        field(4; "Creation date"; Date)
        {
            caption = 'Creation date';
        }
        field(5; "Source code"; code[10])
        {
            Caption = 'sourcecode';
        }
        field(6; "user ID"; code[50])
        {
            Caption = 'User ID';
        }
        field(7; "Journal Batch Name"; code[10])
        {
            Caption = 'Journal Batch Name';
        }

    }

    keys
    {
        key(pk; No)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
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