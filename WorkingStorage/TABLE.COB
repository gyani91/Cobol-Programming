       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 H1.
        02 FILLER PIC X(35) VALUE SPACES.
        02 FILLER PIC X(5) VALUE "J.I.T".
       01 H2.
        02 FILLER PIC X(8) VALUE "ROLL NO:".
        02 FILLER PIC X(3) VALUE SPACES.
        02 PRNO PIC X(5).
        02 FILLER PIC X(10) VALUE SPACES.
        02 FILLER PIC X(15) VALUE "NAME:".
        02 FILLER PIC X(3) VALUE SPACES.
        02 PNAME PIC X(10).
       01 H3.
        02 FILLER PIC X(7) VALUE "SUBJECT".
        02 FILLER PIC X(5) VALUE SPACES.
        02 FILLER PIC X(11) VALUE "TOTAL MARKS".
        02 FILLER PIC X(5) VALUE SPACES.
        02 FILLER PIC X(11) VALUE "MARKS-OBTD".
       01 H4.
        02 FILLER PIC X(5) VALUE " DAA ".
        02 FILLER PIC X(10) VALUE SPACES.
        02 FILLER PIC X(3) VALUE "100".
        02 FILLER PIC X(10) VALUE SPACES.
        02 PM1 PIC 9(3).
       01 H5.
        02 FILLER PIC X(5) VALUE "DPFS ".
        02 FILLER PIC X(10) VALUE SPACES.
        02 FILLER PIC X(3) VALUE "100".
        02 FILLER PIC X(10) VALUE SPACES.
        02 PM2 PIC 9(3).
       01 H6.
        02 FILLER PIC X(5) VALUE "DPOPL".
        02 FILLER PIC X(10) VALUE SPACES.
        02 FILLER PIC X(3) VALUE "100".
        02 FILLER PIC X(10) VALUE SPACES.
        02 PM3 PIC 9(3).
       01 H7.
        02 FILLER PIC X(5) VALUE " SE  ".
        02 FILLER PIC X(10) VALUE SPACES.
        02 FILLER PIC X(3) VALUE "100".
        02 FILLER PIC X(10) VALUE SPACES.
        02 PM4 PIC 9(3).
       01 H8.
        02 FILLER PIC X(5) VALUE " IM  ".
        02 FILLER PIC X(10) VALUE SPACES.
        02 FILLER PIC X(3) VALUE "100".
        02 FILLER PIC X(10) VALUE SPACES.
        02 PM5 PIC 9(3).
       01 H9.
        02 FILLER PIC X(5) VALUE "TOTAL".
        02 FILLER PIC X(10) VALUE SPACES.
        02 FILLER PIC X(3) VALUE "500".
        02 FILLER PIC X(10) VALUE SPACES.
        02 P-TOTAL PIC 9(3).
       01 H10.
        02 FILLER PIC X(10) VALUE "AVERAGE: ".
        02 P-AVG PIC 99.99.
        02 FILLER PIC X(8) VALUE SPACES.
        02 FILLER PIC X(8) VALUE "RESULT: ".
        02 P-RESULT PIC X(4).
       01 PRINT-LINE PIC X(79) VALUE ALL "_".
       77 ROLL-NO PIC X(5).
       77 NAME  PIC A(10).
       77 M1 PIC 9(3).
       77 M2 PIC 9(3).
       77 M3 PIC 9(3).
       77 M4 PIC 9(3).
       77 M5 PIC 9(3).
       77 TOTAL PIC 9(3) VALUE ZERO.
       77 AVG PIC 99V99 VALUE 0.
       77 RESULT PIC X(4).
       PROCEDURE DIVISION.
       GET-PARA.
           DISPLAY "ENTER ROLL NO. ".
           ACCEPT ROLL-NO.
           DISPLAY "ENTER NAME: ".
           ACCEPT NAME.
           DISPLAY "ENTER MARKS OF FIVE SUBJECTS: ".
           ACCEPT M1.
           ACCEPT M2.
           ACCEPT M3.
           ACCEPT M4.
           ACCEPT M5.
       COMPUTE-PARA.
           ADD M1 M2 M3 M4 M5 GIVING TOTAL.
           DIVIDE TOTAL BY 5 GIVING AVG.
           IF M1 > 39 AND M2 > 39 AND M3 > 39 AND M4 > 39 AND M5 > 39
                MOVE "PASS" TO RESULT
           ELSE
                MOVE "FAIL" TO RESULT.
       MOVE-PARA.
           MOVE ROLL-NO TO PRNO.
           MOVE NAME TO PNAME.
           MOVE M1 TO PM1.
           MOVE M2 TO PM2.
           MOVE M3 TO PM3.
           MOVE M4 TO PM4.
           MOVE M5 TO PM5.
           MOVE TOTAL TO P-TOTAL.
           MOVE AVG TO P-AVG.
           MOVE RESULT TO P-RESULT.
       DISPLAY-PARA.
           DISPLAY (1, 1) ERASE.
           DISPLAY PRINT-LINE.
           DISPLAY H1.
           DISPLAY PRINT-LINE.
           DISPLAY H2.
           DISPLAY PRINT-LINE.
           DISPLAY H3.
           DISPLAY PRINT-LINE.
           DISPLAY H4.
           DISPLAY H5.
           DISPLAY H6.
           DISPLAY H7.
           DISPLAY H8.
           DISPLAY PRINT-LINE.
           DISPLAY H9.
           DISPLAY H10.
           STOP RUN.
