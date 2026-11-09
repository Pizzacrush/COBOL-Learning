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

       01  N        PIC 9(5).
       01  M        PIC 9(5).
       01  NUM      PIC 9(5).
       01  SUM1     PIC 9(10) VALUE 0.

      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
           DISPLAY "ENTER N: "
           ACCEPT N

           DISPLAY "ENTER M: "
           ACCEPT M

           MOVE N TO NUM

           PERFORM UNTIL NUM > M
               IF FUNCTION MOD(NUM, 2) = 1
                   ADD NUM TO SUM1
               END-IF

               ADD 1 TO NUM
           END-PERFORM

           DISPLAY "SUM OF ODD NUMBERS: " SUM1

           STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
