       IDENTIFICATION DIVISION.
       PROGRAM-ID. GRADING-SYSTEM.
       ENVIRONMENT DIVISION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 GRADE PIC X.
       01 MARKS PIC 9(3).
       88 A-GRADE VALUES ARE 80 THRU 100.
       88 B-GRADE VALUES ARE 60 THRU 79.
       88 C-GRADE VALUES ARE 50 THRU 59.
       88 D-GRADE VALUES ARE 41 THRU 49.
       88 E-GRADE VALUES ARE 0 THRU 40.
       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY ( 1 , 1 ) ERASE.
           DISPLAY ( 4 , 8 ) "ENTER MARKS: ".
           ACCEPT MARKS.
           IF A-GRADE
                MOVE "A" TO GRADE.
           IF B-GRADE
                MOVE "B" TO GRADE.
           IF C-GRADE
                MOVE "C" TO GRADE.
           IF D-GRADE
                MOVE "D" TO GRADE.
           IF E-GRADE
                MOVE "E" TO GRADE.
           DISPLAY (6, 8) "YOU SECURED ", GRADE, "-GRADE".
           STOP RUN.


                




