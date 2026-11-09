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
       01  NUM       PIC 9(5).
       01  QUOTIENT  PIC 9(5).
       01  REMAINDER1 PIC 9.
       01  POS       PIC 9(2) VALUE 0.
       01  I         PIC 9(2).
       01  BINARY-NUM PIC X(20) VALUE SPACES.

      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

           DISPLAY "ENTER A DECIMAL NUMBER: "
           ACCEPT NUM

           IF NUM = 0
               DISPLAY "BINARY NUMBER: 0"
           ELSE
               MOVE NUM TO QUOTIENT

               PERFORM UNTIL QUOTIENT = 0
                   ADD 1 TO POS

                   COMPUTE REMAINDER1 = FUNCTION MOD(QUOTIENT 2)
                   COMPUTE QUOTIENT = QUOTIENT / 2

                   IF REMAINDER1 = 0
                       MOVE "0" TO BINARY-NUM(POS:1)
                   ELSE
                       MOVE "1" TO BINARY-NUM(POS:1)
                   END-IF
               END-PERFORM

               DISPLAY "BINARY NUMBER: " BINARY-NUM
           END-IF


           STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
