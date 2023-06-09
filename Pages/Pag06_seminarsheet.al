page 50106 "CSD Seminar comment sheet"

{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar comment line";
    Caption = 'seminar coment sheet';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(date; date)
                {

                }
                field(code; code)
                {
                    Visible = false;

                }
                field(comment; comment)
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