table 50132 "CSD Seminar Ledger Entry"
{
    Caption = 'Seminar Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';

        }
        field(2; "Seminar No."; code[20])
        {
            Caption = 'Seminar no.';
        }
        field(3; "Posting date"; Date)
        {
            Caption = 'posting date';
        }
        field(4; "Document date"; Date)
        {
            Caption = 'Document date';
        }
        field(5; Description; text[50])
        {
            Caption = 'Description';
        }
        field(6; "Bill-to Customer No."; code[20])
        {
            Caption = 'Bill-to Customer No.';
        }
        field(7; "Charge Type"; Option)
        {
            OptionMembers = "Room","instructor","participant";
        }
        field(8; type; option)
        {
            OptionMembers = "room";
        }
        field(9; quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(10; "Document No."; code[20])
        {
            caption = 'Document No.';
        }
        field(11; "Entry Type"; Option)
        {
            OptionMembers = "General ledger","Sales Ledger","purchase ledger";
        }
        field(12; "unit price"; Decimal)
        {
            caption = 'unit price';
        }
        field(13; "Total price"; Decimal)
        {
            Caption = 'Total price';
        }
        field(14; "Participant contact No."; code[20])
        {
            Caption = 'participant contact No';
        }
        field(15; "participant name"; text[50])
        {
            Caption = 'participant name';
        }
        field(16; chargeable; Boolean)
        {
            Caption = 'chargeable';
        }
        field(17; "room resource No."; code[20])
        {
            Caption = 'room resource No.';
        }
        field(18; "Instructor Resource No."; code[20])
        {
            Caption = 'instructor Resource No.';
        }
        field(19; "starting date"; Date)
        {
            Caption = 'Starting date';
        }
        field(20; "Seminar Registration No."; code[20])
        {
            Caption = 'Seminar Regitration No.';
        }
        field(21; "Res. ledger Entry No."; Integer)
        {
            Caption = 'Res. ledger Entry No.';
        }
        field(22; "Source type"; Option)
        {
            OptionMembers = "";
        }
        field(23; "source No."; code[20])
        {

        }
        field(24; "journal batch name"; code[10])
        {

        }
        field(25; "source code"; code[10])
        {
            caption = 'source code';
        }
        field(26; "Reason code"; Integer)
        {
            caption = 'reason code';
        }
        field(27; "No.series"; code[10])
        {
            caption = 'No.series';
        }
        field(28; "user Id"; code[50])
        {
            caption = 'User Id';
            TableRelation = user where("user name" = field("user Id"));
            ValidateTableRelation = false;
            trigger OnLookup();
            var
                userMgt: Codeunit "User Management";
            begin
                userMgt.LookupUserID("user ID");
            end;
        }
    }

    keys
    {
        key(pk; "Entry No.")
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