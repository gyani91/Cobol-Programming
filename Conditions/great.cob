       IDENTIFICATION DIVISION.
       PROGRAM-ID. GREATEST.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A PIC 9(3).
       01 B PIC 9(3).
       01 C PIC 9(3).
       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "ENTER VALUE OF A".
           ACCEPT A.
           DISPLAY "ENTER VALUE OF B".
           ACCEPT B.
           DISPLAY "ENTER VALUE OF C".
           ACCEPT C.
           IF A IS GREATER THAN B
           IF A IS GREATER THAN C
           DISPLAY "THE GREATEST NUMBER IS ", A
           ELSE
           DISPLAY "THE GREATEST NUMBER IS ", C
           ELSE
           IF B IS GREATER THAN C
           DISPLAY "THE GREATEST NUMBER IS ", B
           ELSE
           DISPLAY "THE GREATEST NUMBER IS ", C
           STOP RUN.
       
