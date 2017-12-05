       IDENTIFICATION DIVISION.
       PROGRAM-ID. JK.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 N1 PIC 99.
       77 N2 PIC 99.
       77 R PIC 9999.
       77 CH PIC 99.
       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY " 1.ADD".
           DISPLAY " 2.SUBTRACT".
           DISPLAY " 3.MULTIPLY".
           DISPLAY " 4.DIVIDE".
           DISPLAY " 5.EXIT".
           DISPLAY "ENTER CHOICE ".
           ACCEPT CH.
           GO TO P1 P2 P3 P4 P5 DEPENDING ON CH.
       P1.
           DISPLAY "ENTER N1 ".
           ACCEPT N1.
           DISPLAY "ENTER N2 ".
           ACCEPT N2.
           COMPUTE R = N1 + N2.
           DISPLAY "RESULT= ", R.
           GO TO MAIN-PARA.
       P2.
           DISPLAY "ENTER N1 ".
           ACCEPT N1.
           DISPLAY "ENTER N2 ".
           ACCEPT N2.
           COMPUTE R = N1 - N2.
           DISPLAY "RESULT= ", R.
           GO TO MAIN-PARA.
       P3.
           DISPLAY "ENTER N1 ".
           ACCEPT N1.
           DISPLAY "ENTER N2 ".
           ACCEPT N2.
           COMPUTE R = N1 * N2.
           DISPLAY "RESULT= ", R.
           GO TO MAIN-PARA.
       P4.
           DISPLAY "ENTER N1 ".
           ACCEPT N1.
           DISPLAY "ENTER N2 ".
           ACCEPT N2.
           COMPUTE R = N1 / N2.
           DISPLAY "RESULT= ", R.
           GO TO MAIN-PARA.
       P5.
       STOP-RUN.
