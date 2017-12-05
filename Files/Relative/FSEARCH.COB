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
           OPEN INPUT STUDENT.
       ASK-PARA.
           DISPLAY "ENTER THE ROLL NO TO BE SEARCHED: ".
           ACCEPT TRNO.
       READ-PARA.
           READ STUDENT AT END GO TO NEXT-RECORD-PARA.
           IF RNO=TRNO
                DISPLAY "ROLL NO: ", RNO
                DISPLAY "NAME: ", NAME
                DISPLAY "MARKS: ", MARKS
                GO TO NEXT-RECORD-PARA
           ELSE
                GO TO READ-PARA.
       NEXT-RECORD-PARA.
           DISPLAY "DO YOU WANT TO SEARCH ANOTHER ROLL NO? (Y/N): ".
           ACCEPT CHOICE.
           IF CHOICE = "Y"
                GO TO ASK-PARA.
       CLOSE-PARA.
           CLOSE STUDENT.
           STOP RUN.
