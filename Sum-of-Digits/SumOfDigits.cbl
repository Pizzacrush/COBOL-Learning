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

       01  NUM PIC 9(10).
       01  DIGIT PIC 9(1).
       01  SUM1 PIC 9(10) VALUE 0.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

           DISPLAY "ENTER A NUMBER: "
           ACCEPT NUM

           PERFORM UNTIL NUM = 0
               COMPUTE DIGIT = FUNCTION MOD(NUM, 10)
               ADD DIGIT TO SUM1
               COMPUTE NUM = NUM / 10
           END-PERFORM

           DISPLAY "SUM OF DIGITS: " SUM1

           STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
