page 50118 "CSD posted Seminar Reg. Header"
{
    PageType = Document;
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
                    caption = 'No';

                }
                field("seminar No."; "seminar No.")
                {
                    caption = 'seminar No.';
                }
                field("starting date"; "starting date")
                {
                    Caption = 'starting date';
                }
                field("instructor code"; "instructor code")
                {

                }
                field("instructor name"; "instructor name")
                {

                }
                field("posting date"; "posting date")
                {

                }
                field("document date"; "document date")
                {

                }
                field("room reource  no."; "room reource  no.")
                {

                }
            }
        }
        area(Factboxes)
        {
            part("seminar details factbox"; "CSD Seminar detail factbox")
            {
                SubPageLink = "no" = field("seminar No.");
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
