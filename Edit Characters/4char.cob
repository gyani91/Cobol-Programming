       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRO.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A PIC ZZ999 VALUE ZERO.
       01 B PIC **999 VALUE ZERO.
       01 C PIC $9999 VALUE ZERO.
       01 D PIC -9999 VALUE ZERO.
       01 E PIC +9999 VALUE ZERO.
       01 F PIC 9999CR VALUE ZERO.
       01 G PIC 999.9 VALUE ZERO.
       01 H PIC 99.9 VALUE ZERO.
       01 I PIC 9900 VALUE ZERO.
       01 J PIC 09/99/99 VALUE ZERO.
       PROCEDURE DIVISION.
       COMPUTE-RUN-PARA.
           DISPLAY "ENTER A=", A.
           ACCEPT A.
           DISPLAY "THE EDITED VALUE OF A", A.
           DISPLAY "THE FORMAT IS ZZ9999".
           DISPLAY "ENTER B=", B.
           ACCEPT B.
           DISPLAY "THE EDITED VALUE OF B", B.
           DISPLAY "THE FORMAT IS **999".
           DISPLAY "ENTER C=", C.
           ACCEPT C.
           DISPLAY "THE EDITED VALUE OF C", C.
           DISPLAY "THE FORMAT IS $9999".
           DISPLAY "ENTER D=", D.
           ACCEPT D.
           DISPLAY "THE EDITED VALUE OF D", D.
           DISPLAY "THE FORMAT IS -9999".
           DISPLAY "ENTER E=", E.
           ACCEPT E.
           DISPLAY "THE EDITED VALUE OF E", E.
           DISPLAY "THE FORMAT IS +9999".
           DISPLAY "ENTER F=", F.
           ACCEPT F.
           DISPLAY "THE EDITED VALUE OF F", F.
           DISPLAY "THE FORMAT IS 9999CR".
           DISPLAY "ENTER G=", G.
           ACCEPT G.
           DISPLAY "THE EDITED VALUE OF G", G.
           DISPLAY "THE FORMAT IS 999.9".
           DISPLAY "ENTER H=", H.
           ACCEPT H.
           DISPLAY "THE EDITED VALUE OF H", H.
           DISPLAY "THE FORMAT IS 99.9".
           DISPLAY "ENTER I=", I.
           ACCEPT I.
           DISPLAY "THE EDITED VALUE OF I", I.
           DISPLAY "THE FORMAT IS 9900".
           DISPLAY "ENTER J=", J.
           ACCEPT J.
           DISPLAY "THE EDITED VALUE OF J", J.
           DISPLAY "THE FORMAT IS 09/99/99".
           STOP RUN.
