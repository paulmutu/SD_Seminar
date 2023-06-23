table 50111 "CSD Seminar Reg. Line"
{
    Caption = 'Seminar Registration line';

    fields
    {
        field(1; "registration date"; Date)
        {
            Caption = 'Registration date';

        }
        field(2; "Bill-to customers no."; code[50])
        {
            Caption = 'Bill-to customers no.';
        }
        field(3; "Participants contact no."; code[50])
        {
            Caption = 'Participants contact no.';
        }
        field(4; "Participants name"; Text[50])
        {
            Caption = 'Participants name';
        }
        field(5; "Seminar price"; Decimal)
        {
            Caption = 'seminar price';
            AutoFormatType = 2;
        }
        field(6; amount; decimal)
        {
            Caption = 'amount';
        }
    }

    keys
    {
        key(PK; "Participants name", "Participants contact no.", "Bill-to customers no.")
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