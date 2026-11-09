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

       01  NUM        PIC 9(5).
       01  DIVISOR    PIC 9(5).
       01  REMAINDER1 PIC 9(5).
       01  FLAG       PIC 9 VALUE 0.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

           DISPLAY "ENTER A NUMBER: "
           ACCEPT NUM

           IF NUM < 2
               DISPLAY NUM " IS NOT A PRIME NUMBER"
           ELSE
               PERFORM VARYING DIVISOR FROM 2 BY 1
                   UNTIL DIVISOR >= NUM OR FLAG = 1

                   COMPUTE REMAINDER1 = FUNCTION MOD(NUM, DIVISOR)

                   IF REMAINDER1 = 0
                       MOVE 1 TO FLAG
                   END-IF

               END-PERFORM

               IF FLAG = 0
                   DISPLAY NUM " IS A PRIME NUMBER"
               ELSE
                   DISPLAY NUM " IS NOT A PRIME NUMBER"
               END-IF
           END-IF

            STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
