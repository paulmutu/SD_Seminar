page 50100 "CSD seminar setup"

{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD seminar setup";
    Caption = 'seminar setup';
    InsertAllowed = false;
    DeleteAllowed = false;


    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar nos"; "Seminar nos")
                {
                    ApplicationArea = All;

                }
                field("Seminar registration nos."; "seminar registration nos.")
                {

                }
                field("Posted Seminar reg.nos."; "posted Seminar reg. nos.")
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