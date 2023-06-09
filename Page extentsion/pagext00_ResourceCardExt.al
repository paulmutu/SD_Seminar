pageextension 50100 "CSD ResourceCardext" extends "Resource Card"
//CSD1.00-2018-02-01 -D.E. Veloper
{
    layout
    {

        addlast(General)
        {
            field("CSD Resource Tpye"; "CSD Resource type")
            {

            }
            field("CSD Quantity per day"; "CSD Quantity per day")
            {

            }
        }
        addafter("personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = "showMaxField";
                field("CSD Maximum Participants"; "CSD Maximum participants")
                {

                }
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnAfterGetRecord();

    begin
        ShowMaxField := (type = type::machine);
        currpage.update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}
