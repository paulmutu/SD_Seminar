pageextension 50101 "CSD resourceListExt" extends "Resource List"
//CSD 1.00-2018-01-01
{
    layout
    {
        modify(Type)
        {
            Visible = showtype;
        }
        addafter(Type)
        {
            field("CSD Maximum Participants"; "CSD Maximum participants")
            {
                Visible = showMaxField;
            }
            field("CSD Resource Type"; "CSD Resource type")
            {

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage()

    begin
        showtype := (GetFilter(Type) = '');
        showMaxField := (GetFilter(Type) = format(type::machine));
    end;

    var
        [InDataSet]
        showMaxField: Boolean;
        [InDataSet]
        showtype: Boolean;
}