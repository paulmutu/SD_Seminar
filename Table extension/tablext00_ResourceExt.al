tableextension 50100 "CSD ResourceExt" extends Resource
//CSD1.00-2018-01-01-D.E. Veloper//
{
    fields
    {

        modify("profit %")
        {
            trigger onAfterValidate()
            var
                myInt: Integer;
            begin
                Rec.TestField("Unit cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'instructor,Room';
        }
        field(50101; "CSD Resource type"; Option)
        {
            Caption = 'resource type';
            OptionMembers = "internal","External";
            OptionCaption = 'internal, external';
        }
        field(50102; "CSD Maximum participants"; integer)
        {
            Caption = 'maximum participants';
        }
        field(50103; "CSD Quantity per day"; Decimal)
        {
            Caption = 'Quantity per day';
        }
    }
}