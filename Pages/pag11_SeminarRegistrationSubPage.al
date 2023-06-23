page 50111 "CSD Seminer reg. subpage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Reg. Line";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("bill-to customer no."; "Bill-to customers no.")
                {

                }
                field("participant contact no."; "Participants contact no.")
                {

                }
                field("Participants name"; "Participants name")
                {

                }
            }
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