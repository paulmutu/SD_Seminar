page 50121 "CSD seminar Ledger Entries"
//CSD1.00-2018-01-01 -D.E. Veloper
//Chapter 7 - Lab2-9
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Ledger Entry";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Posting date"; "Posting date")
                {


                }
                field("Document No."; "Document No.")
                {


                }
                field("Document date"; "Document date")
                {
                    Visible = false;

                }
                field("Entry Type"; "Entry Type")
                {


                }
                field(Description; Description)
                {


                }
                field("Seminar No."; "Seminar No.")
                {


                }
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {


                }
                field("Charge Type"; "Charge Type")
                {


                }
                field(type; type)
                {


                }
                field(quantity; quantity)
                {


                }
                field("unit price"; "unit price")
                {


                }
                field("Total price"; "Total price")
                {


                }
                field(chargeable; chargeable)
                {


                }
                field("Participant contact No."; "Participant contact No.")
                {


                }
                field("participant name"; "participant name")
                {


                }
                field("Instructor Resource No."; "Instructor Resource No.")
                {


                }
                field("room resource No."; "room resource No.")
                {


                }
                field("starting date"; "starting date")
                {


                }
                field("Seminar Registration No."; "Seminar Registration No.")
                {


                }
                field("Entry No."; "Entry No.")
                {


                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}