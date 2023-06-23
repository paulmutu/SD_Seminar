tableextension 50103 "CSD ResourceLedgerEntryExt" extends "Res. Ledger Entry"
//CSD1.00 -2018 -01-01
//Chapter 7-Lab 4-1
{
    fields
    {
        field(50100; "CSD Seminar No."; code[20])
        {
            caption = 'Seminar No.';
            TableRelation = "CSD Seminar";
        }
        field(50101; "CSD Seminar Registration No."; code[20])
        {
            Caption = 'Seminar registration No.';
            TableRelation = "CSD Seminar Reg. header";
        }
    }

    var
        myInt: Integer;
}