       IDENTIFICATION DIVISION.
       PROGRAM-ID. BHA.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 YR PIC 9999.
       77 Q PIC 999.
       77 R PIC 9999.
       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "ENTER YR= ".
           ACCEPT YR.
           DIVIDE YR BY 4 GIVING Q REMAINDER R.
           IF R=0
           DISPLAY "THE YEAR IS LEAP YEAR"
           ELSE
           DISPLAY "THE YEAR IS NOT LEAP YEAR".
           STOP RUN.
