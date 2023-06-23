page 50113 "CSD seminar registration list"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Reg. header";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(No; No)
                {


                }
                field("Starting date"; "starting date")
                {

                }
                field("seminar no."; "seminar No.")
                {

                }
                field("status"; status)
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
                field("room reource  no."; "room reource  no.")
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
