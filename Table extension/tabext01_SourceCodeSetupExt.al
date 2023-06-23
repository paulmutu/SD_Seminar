tableextension 50101 "CSD SourceCodeSetupExt" extends "source Code setup"
//CSD1.00-2012-06-15-D.E. Veloper
//Chapter7-lab1-7
//-Added new fields
//- seminar

{
    fields
    {
        field(50100; "CSD Seminar"; code[10])
        {
            caption = 'Seminar';
            TableRelation = "Source code";
        }
    }

    var
        myInt: Integer;
}