table 50112 "CSD Seminar Charge"
{
    Caption = 'Seminar Charge';

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
            trigger OnValidate();
            begin

            end;
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

            trigger OnValidate();
            begin
                if (quantity <> 0) then
                    "Unit of measurement" := Round("Total price" / quantity, 0.01)
                else
                    "Unit of measurement" := 0;
            end;
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
            trigger OnValidate();
            begin
                if "seminar price" = 0 then begin
                    "Line Discount %" := 0;
                end else begin
                    GLsetup.get;
                    "line discount %" := Round("Line Discount amount" / "Seminar price" * 100, GLsetup."Amount rounding precision");
                end;
                //UpdateAmount;
            end;
        }
        field(10; "Line Discount amount"; Decimal)
        {
            Caption = 'Line Discount amount';
            trigger OnValidate();

            begin
                if "Seminar Price" = 0 then begin
                    "Line discount amount" := 0;
                end else begin
                    GLSetup.Get;
                    "Line Discount Amount" := Round("Line discount %" * "Seminar price" * 0.01, GLsetup."Amount Rounding Precision");
                end;

            end;
        }
        field(11; amount; Decimal)
        {
            Caption = 'amount';
            trigger OnValidate()

            begin
                TestField("Bill-to Customer No.");
                TestField("Seminar price");
                GLSetup.get;
                amount := Round(amount, GLSetup."Amount Rounding Precision");
                "line discount amount" := "Seminar price" - amount;
                if "seminar Price" = 0 then begin
                    "line discount %" := 0;
                end else begin
                    "line Discount %" := Round("Line Discount amount" / "Seminar price" * 100, GlSetup."amount Rounding precision");
                end;

            end;
        }
        field(12; "unit price"; Decimal)
        {
            Caption = 'unit price';
            AutoFormatType = 2;
            MinValue = 0;
            trigger OnValidate();
            begin
                "Total Price" := Round("Unit Price" * Quantity, 0.01);
            end;
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