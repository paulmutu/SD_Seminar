codeunit 50131 "CSD Seminar Jnl.-Check line"
{
    TableNo = "CSD Seminar Journal line";
    trigger OnRun()
    begin
        Runcheck(Rec);
    end;

    var
        Glsetup: record "General ledger setup";
        UserSetup: Record "User Setup";
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        ClosingDateTxt: Label 'cannot be a closing date';
        PostingDateTxt: Label 'is not within your range of allowed posting dates.';

    procedure Runcheck(var SemjnlLine: Record "CSD Seminar journal line");
    var
        myInt: Integer;
    begin
        with SemjnlLine do begin
            if Emptyline then
                exit;
            TestField("posting date");
            TestField("instructor resource No.");
            TestField("seminar no.");

            case "Charge Type" of
                "Charge Type"::instructor:
                    TestField("Instructor Resource No.");
                "Charge Type"::Room:
                    TestField("Room Resource No.");
                "charge Type"::participant:
                    TestField("Participant contact No.");

            end;

            if chargeable then
                TestField("Bill-to Customer No.");

            if "posting Date" = ClosingDate("Posting Date") then
                FieldError("posting Date", ClosingDateTxt);

            if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                if UserId <> '' then
                    if UserSetup.Get(UserId) then begin
                        AllowPostingFrom := UserSetup."Allow Posting from";
                        AllowPostingTo := UserSetup."Allow Posting To";
                    end;
                if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D)
                then begin
                    Glsetup.Get;
                    AllowPostingFrom := Glsetup."Allow Posting From";
                    AllowPostingTo := Glsetup."Allow Posting To";
                end;
                if AllowPostingTo = 0D then
                    AllowPostingTo := DMY2Date(31, 12, 9999);
            end;
            if ("Posting Date" < AllowPostingFrom) OR
            ("Posting Date" > AllowPostingTo) then
                FieldError("Posting Date", PostingDateTxt);

            if ("Document Date" <> 0D) then
                if ("Document Date" = ClosingDate("Document Date")) then
                    FieldError("Document Date", PostingDateTxt);


        end;

    end;
}