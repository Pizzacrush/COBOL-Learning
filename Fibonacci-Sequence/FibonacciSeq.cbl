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

       01  N           PIC 9(3).
       01  COUNT1      PIC 9(3).
       01  FIRST1      PIC 9(9) VALUE 0.
       01  SECOND      PIC 9(9) VALUE 1.
       01  NEXT1       PIC 9(9).
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

           DISPLAY "ENTER NUMBER OF TERMS: "
           ACCEPT N

           DISPLAY "FIBONACCI SERIES:"

           PERFORM VARYING COUNT1 FROM 1 BY 1
                   UNTIL COUNT1 > N

               DISPLAY FIRST1

               COMPUTE NEXT1 = FIRST1 + SECOND
               MOVE SECOND TO FIRST1
               MOVE NEXT1 TO SECOND

           END-PERFORM

           STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
