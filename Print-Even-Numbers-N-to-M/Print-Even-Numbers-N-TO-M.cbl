      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.

       01  WS-NUMBER-M PIC 9(5).
       01  WS-NUMBER-N PIC 9(5).
       01  WS-NUMBER   PIC 9(5).
       01  WS-NUMBER0  PIC Z(5).
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

           DISPLAY "ENTER NUMBER N: "
           ACCEPT WS-NUMBER-N

           DISPLAY "ENTER NUMBER M: "
           ACCEPT WS-NUMBER-M

           MOVE WS-NUMBER-N TO WS-NUMBER

           PERFORM UNTIL WS-NUMBER > WS-NUMBER-M
               IF FUNCTION MOD(WS-NUMBER, 2) = 0
                   MOVE WS-NUMBER TO WS-NUMBER0
                   DISPLAY WS-NUMBER0
               END-IF

               ADD 1 TO WS-NUMBER
           END-PERFORM

           STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
