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

       01  WS-N        PIC 9(5).
       01  WS-COUNT    PIC 9(5).
       01  WS-COUNT2   PIC ZZZZZ9.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

           DISPLAY "ENTER N: "
           ACCEPT WS-N

           MOVE 2 TO WS-COUNT

           PERFORM UNTIL WS-COUNT > WS-N
               MOVE WS-COUNT TO WS-COUNT2
               DISPLAY WS-COUNT2
               ADD 2 TO WS-COUNT
           END-PERFORM

           STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
