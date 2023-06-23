page 50124 "CSD Seminar charge"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Charge";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(No; No)
                {


                }
                field(Description; Description)
                {

                }
                field(quantity; quantity)
                {

                }
                field("Unit of measurement"; "Unit of measurement")
                {

                }
                field("bill-to customer no."; "bill-to customer no.")
                {

                }
                field("unit price"; "unit price")
                {

                }
                field("Total price"; "Total price")
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