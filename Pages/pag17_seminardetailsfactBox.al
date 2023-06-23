page 50117 "CSD Seminar detail factbox"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Name)
                {

                }
                field(No; No)
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("minimum Participants"; "minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
                field("seminar price"; "seminar price")
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}