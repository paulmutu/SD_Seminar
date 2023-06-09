page 50107 "CSD Seminar comment list"

{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar comment line";
    Caption = 'seminar coment list';
    Editable = false;

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