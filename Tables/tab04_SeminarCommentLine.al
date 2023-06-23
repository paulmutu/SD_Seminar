table 50104 "CSd Seminar comment line"
{
    Caption = 'Seminar comment line';
    LookupPageId = "CSD Seminar comment list";
    DrillDownPageId = "CSD seminar comment list";

    fields
    {
        field(10; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers = "seminar","Seminar registration header","Posted Seminar reg. Header";
            OptionCaption = 'seminar,seminar registration,posted seminar registration';
        }
        field(20; "Document line No."; Integer)
        {

        }
        field(30; "No"; code[20])
        {
            Caption = 'No';
            TableRelation = if ("Table Name" = const(seminar))
            "CSD Seminar";//else
                          // if ("Table Name" = const("Seminar registration")) "CSD Seminar Reg. header";
        }
        field(40; "line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(50; date; date)
        {
            caption = 'Date';
        }
        field(60; code; code[10])
        {
            caption = 'code';
        }
        field(70; comment; text[80])
        {
            Caption = 'comment';
        }
    }

    keys
    {
        key(PK; "Table name", "Document line No.", "line No.", No)
        {
            Clustered = true;
        }
    }





}