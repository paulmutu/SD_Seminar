table 50131 "CSD Seminar journal line"
{
    Caption = 'Seminar journal line';

    fields
    {
        field(1; "journal Template Name"; code[10])
        {


        }
        field(2; "journal Batch Name"; code[10])
        {

        }
        field(3; "Posting Date"; date)
        {
            Caption = 'posting date';
            trigger OnValidate();
            begin
                Validate("Document date", "Posting date");
            end;


        }
        field(4; "Document Date"; date)
        {

        }
        field(5; "Source Code"; code[10])
        {

        }
        field(6; "Reason Code"; code[10])
        {

        }
        field(7; "Seminar No."; code[20])
        {
            Caption = 'Seminar no.';
        }
        field(8; "Bill-to Customer No."; code[20])
        {
            Caption = 'Bill-to Customer No.';
        }
        field(9; "Charge Type"; Option)
        {
            OptionMembers = "Room","instructor","participant";
        }
        field(10; "room resource No."; code[20])
        {
            Caption = 'room resource No.';
        }
        field(11; "Instructor Resource No."; code[20])
        {
            Caption = 'instructor Resource No.';
        }
        field(12; chargeable; Boolean)
        {
            Caption = 'chargeable';
        }
        field(13; quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(14; "Participant contact No."; code[20])
        {
            Caption = 'participant contact No';
        }



    }

    keys
    {
        key(pk; "journal Template Name", "journal Batch Name")
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

    procedure Emptyline(): Boolean;

    begin
        exit(("Seminar No." = '') AND (Quantity = 0));
    end;

}