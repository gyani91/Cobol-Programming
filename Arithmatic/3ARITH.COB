       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARITH.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM-1 PIC 9999 VALUE ZERO.
       01 NUM-2 PIC 9999 VALUE ZERO.
       01 RESULT-1 PIC 9999 VALUE ZERO.
       01 RESULT-2 PIC 9999 VALUE ZERO.
       01 RESULT-3 PIC 9999 VALUE ZERO.
       01 RESULT-4 PIC 9999 VALUE ZERO.
       PROCEDURE DIVISION.
       CALCULATE-RESULT.
           DISPLAY "ENTER NO".
           ACCEPT NUM-1.
           DISPLAY "ENTER NO".
           ACCEPT NUM-2.
           ADD NUM-1 NUM-2 GIVING RESULT-1.
           DISPLAY "ADDITION IS=", RESULT-1.
           SUBTRACT NUM-1 FROM NUM-2 GIVING RESULT-2.
           DISPLAY "SUBTRACTION IS=", RESULT-2.
           MULTIPLY NUM-1 BY NUM-2 GIVING RESULT-3.
           DISPLAY "MULTIPLICATION IS=", RESULT-3.
           DIVIDE NUM-1 BY NUM-2 GIVING RESULT-4.
           DISPLAY "DIVISION IS=", RESULT-4.
           STOP RUN.


          
