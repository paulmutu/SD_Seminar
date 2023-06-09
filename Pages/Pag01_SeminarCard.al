page 50101 "CSD Seminar Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No"; "No")
                {
                    AssistEdit = true;
                    trigger OnAssistEdit();

                    begin
                        if AssistEdit then
                            CurrPage.Update;
                    end;

                }
                field("Name"; "Name")
                {

                }
                field("search name"; "Search Name")
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Minimum Participants"; "minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
                field("Blocked"; "Blocked")
                {

                }
                field("Last date Modified"; "Last Date modified")
                {

                }
            }
            group(invoicing)
            {
                field("gen.Prod. posting Group"; "Gen. prod. posting group")
                {

                }
                field("VAT prod.posting group"; "VAT Prod. posting Group")
                {

                }
                field("Seminar price"; "seminar price")
                {

                }
            }

        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("$seminar")
            {
                action("co$mments")
                {
                    //RunObject=page"CSD Seminar comment sheet";
                    //runpagelink = "Table Name"=const(seminar),
                    //             "No"=field("No");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    promotedOnly = true;
                }

            }
        }
    }


}