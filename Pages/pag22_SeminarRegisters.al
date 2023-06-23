page 50122 "CSD Seminar registers"
//CSD1.00-2018-01-01 -D.E. Veloper
//Chapter 7 - Lab2-11
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Register";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(No; No)
                {

                }
                field("Creation date"; "Creation date")
                {

                }
                field("user ID"; "user ID")
                {

                }
                field("Source code"; "Source code")
                {

                }
                field("Journal Batch Name"; "Journal Batch Name")
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
        area(Navigation)
        {
            action("Seminar Ledgers")
            {
                Image = WarrantyLedger;
                RunObject = codeunit "CSD Seminar Reg.-Show Ledger";

                // trigger OnAction();
                // begin

                // end;
            }
        }
    }
}