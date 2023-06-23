codeunit 50132 "CSD Seminar Jnl.-post Line"
//CSD1.00 -2018-01-01-D.E. Velepor
//Chapter 7-Lab2-8
{
    TableNo = "CSD Seminar journal line";

    trigger OnRun()
    begin

    end;

    var
        SeminarJnlLine: Record "CSD Seminar Journal Line";
        SeminarLedgerEntry: Record "CSD Seminar Ledger Entry";
        SeminarRegister: Record "CSD Seminar register";
        SeminarJnlcheckLine: Codeunit "CSD Seminar Jnl.-Check line";
        NextEntryNo: Integer;

    procedure RunWithcheck(Var SeminarJnlLine2: Record "CSD Seminar Journal line");

    var
        myInt: Integer;
    begin
        with SeminarJnlLine2 do begin
            SeminarJnlLine := SeminarJnlLine2;
            code();
            SeminarJnlLine2 := SeminarJnlLine;
            if NextEntryNo = 0 then begin
                SeminarLedgerEntry.LockTable;
                if SeminarLedgerEntry.FindLast then
                    NextEntryNo := SeminarLedgerEntry."Entry No.";
                NextEntryNo := NextEntryNo + 1;

                if SeminarRegister."No" = 0 then begin
                    SeminarRegister.LockTable;
                    if (not SeminarRegister.FindLast()) or
                    (SeminarRegister."To Entry No." <> 0) then begin
                        SeminarRegister.INIT;
                        SeminarRegister."No" := SeminarRegister."No" + 1;
                        SeminarRegister."From Entry No." := NextEntryNo;
                        SeminarRegister."To Entry No." := NextEntryNo;
                        SeminarRegister."Creation date" := Today;
                        SeminarRegister."Source code" := "Source code";
                        SeminarRegister."Journal Batch Name" := "journal Batch Name";
                        SeminarRegister."user ID" := UserId;
                        SeminarRegister.Insert;
                    end;
                    SeminarRegister."From Entry No." := NextEntryNo;
                    SeminarRegister.Modify;

                    SeminarLedgerEntry.Init;
                    SeminarLedgerEntry."Seminar No." := "Seminar No.";
                    SeminarLedgerEntry."Posting date" := "posting date";
                    SeminarLedgerEntry."Document date" := "Document date";
                    //SeminarLedgerEntry."Entry Type":="Entry Type";
                    //SeminarLedgerEntry."Document No.":="Document No.";
                    // SeminarLedgerEntry.Description:=Description;
                    SeminarLedgerEntry."Bill-to Customer No." := "Bill-to Customer No.";
                    SeminarLedgerEntry."Charge Type" := "Charge type";
                    //SeminarLedgerEntry.type:=type;
                    SeminarLedgerEntry.quantity := quantity;
                    //SeminarLedgerEntry."Unit price":="Unit Price";
                    // SeminarLedgerEntry."Total price":="Total price";
                    SeminarLedgerEntry."Participant contact No." := "Participant contact No.";
                    // SeminarLedgerEntry."participant name":="participant name";
                    SeminarLedgerEntry.chargeable := chargeable;
                    SeminarLedgerEntry."room resource No." := "room resource No.";
                    SeminarLedgerEntry."Instructor Resource No." := "Instructor Resource No.";
                    //SeminarLedgerEntry."starting date":="starting date";
                    //SeminarLedgerEntry."Seminar Registration No.":="Seminar Registration No.";
                    //SeminarLedgerEntry."Res. ledger Entry No.":="Res. ledger Entry No.";
                    //SeminarLedgerEntry."Source type":="Source type";
                    //SeminarLedgerEntry."source No.":="Source No.";
                    SeminarLedgerEntry."journal batch name" := "journal batch name";
                    SeminarLedgerEntry."source code" := "source Code";
                    //SeminarLedgerEntry."Reason code":="Reason Code";
                    //SeminarLedgerEntry."No.series":="Posting No.series";
                    SeminarLedgerEntry."Entry No." := NextEntryNo;
                    NextEntryNo += 1;
                    SeminarLedgerEntry.Insert;



                end;
            end;
        end;
    end;

    local procedure code()
    var
        myInt: Integer;

    begin


    end;


}