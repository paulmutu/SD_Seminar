table 50100 "CSD Seminar Setup"
{
    Caption = 'seminar setup';

    fields
    {
        field(10; primarykey; Integer)
        {
            Caption = 'primarykey';

        }


        field(20; "Seminar nos"; Code[20])
        {
            caption = 'Seminar nos';
            tableRelation = "No. series";
        }


        field(30; "Seminar Registration Nos."; Code[20])
        {
            caption = 'Seminar Registration Nos';
            tablerelation = "No. series";
        }
        field(40; "posted Seminar reg. nos."; Code[40])
        {
            Caption = 'posted seminarnreg. nos.';
            TableRelation = "No. Series";

        }
    }
    keys
    {
        key(PK; primarykey)
        {
            Clustered = true;
        }
    }
}



