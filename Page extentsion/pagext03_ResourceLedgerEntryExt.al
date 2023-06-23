pageextension 50103 "CSD ResourceLedgerEntryExt" extends "Resource Ledger Entries"
//CSD1.00 -2018-01-01-D.E. Veloper
//Chapter 7 -Lab4-3
{
    layout
    {
        addlast(Content)
        {
            field("Seminar No."; "CSD Seminar No.")
            {

            }
            field("Seminar registration No."; "CSD Seminar Registration No.")
            {

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}