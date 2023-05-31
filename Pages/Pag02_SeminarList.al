page 50102 "CSD Seminar list"

{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    Caption = 'seminar list';
    Editable = false;
    CardPageId = 50101;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No"; "No")
                {

                }
                field(Name; Name)
                {

                }
                field("Seminar duration"; "Seminar Duration")
                {

                }
                field("Seminar Price"; "Seminar price")
                {

                }
                field("Minimum Participants"; "minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }

            }
        }
        area(Factboxes)
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
            group("$Seminar")
            {
                action("Co$mments")
                {
                    //RunObject=page"CSD Seminar comment sheet";
                    //RunPageLink="Table name"=const(Seminar);"No"=field("No");
                    image = Comment;



                }
            }
        }
    }
}