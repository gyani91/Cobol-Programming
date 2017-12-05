       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILES.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.
       FILE-CONTROL.
           SELECT STUDENT ASSIGN TO DISK
           ORGANIZATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD STUDENT
           LABEL RECORDS ARE STANDARD
           VALUE OF FILE-ID "STUDENT.DAT"
           DATA RECORD IS STUDENT-REC.
       01 STUDENT-REC.
        02 RNO PIC 9(3).
        02 NAME PIC A(20).
        02 MARKS PIC 9(4).
       WORKING-STORAGE SECTION.
       77 TRNO PIC 9(3).
       77 CHOICE PIC X.
       PROCEDURE DIVISION.
       OPEN-PARA.
           OPEN I-O STUDENT.
       ASK-PARA.
           DISPLAY "ENTER THE ROLL NO TO BE MODIFIED: ".
           ACCEPT TRNO.
       READ-PARA.
           READ STUDENT AT END GO TO NOT-FOUND-PARA.
           IF RNO=TRNO
                GO TO MODIFY-PARA
           ELSE              
                GO TO READ-PARA.
       NOT-FOUND-PARA.
           DISPLAY "ROLL NO NOT FOUND".
       NEXT-RECORD-PARA.
           DISPLAY "DO YOU WANT TO SEARCH ANOTHER ROLL NO? (Y/N): ".
           ACCEPT CHOICE.
           IF CHOICE = "Y"
                GO TO ASK-PARA.
       CLOSE-PARA.
           CLOSE STUDENT.
           STOP RUN.
       MODIFY-PARA.
           DISPLAY "ROLL NO: ", RNO.
           DISPLAY "NAME: ", NAME.
           DISPLAY "MARKS: ", MARKS.

           DISPLAY "ENTER NEW ROLL NO: ".
           ACCEPT RNO.
           DISPLAY "ENTER NEW NAME: ".
           ACCEPT NAME.
           DISPLAY "ENTER NEW MARKS: ".
           ACCEPT MARKS.

           REWRITE STUDENT-REC.
           GO TO NEXT-RECORD-PARA.
