table 50121 "CSD Posted Seminar Charge"
{
    Caption = 'Posted Seminar Charge';

    fields
    {
        field(1; No; code[50])
        {
            caption = 'No';

        }
        field(2; Description; text[50])
        {
            caption = 'description';
        }
        field(3; quantity; Decimal)
        {
            Caption = 'quantity';
            DecimalPlaces = 0 : 5;

        }
        field(4; "Unit of measurement"; Decimal)
        {
            Caption = 'Unit of measurement';
        }
        field(5; "bill-to customer no."; Code[50])
        {
            Caption = 'bill to customer no.';
        }
        field(6; "Total price"; Decimal)
        {
            Caption = 'Total price';
            AutoFormatType = 1;
            Editable = false;


        }
        field(7; type; option)
        {
            OptionMembers = "resource","G/l Account";

        }
        field(8; "Seminar price"; Decimal)
        {
            caption = 'seminar price';
        }
        field(9; "Line discount %"; Decimal)
        {
            Caption = 'Line discount %';

        }
        field(10; "Line Discount amount"; Decimal)
        {
            Caption = 'Line Discount amount';

        }
        field(11; amount; Decimal)
        {
            Caption = 'amount';

        }
        field(12; "unit price"; Decimal)
        {
            Caption = 'unit price';
            AutoFormatType = 2;
            MinValue = 0;

        }

    }

    keys
    {
        key(pk; "No", "description", "quantity", "Unit of measurement")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        GLSetup: Record "General Ledger Setup";

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