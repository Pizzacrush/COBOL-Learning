      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. LENGTHANDWIDTH.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OUTPUT-FILE
               ASSIGN TO "LENGTHANDWIDTH.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
       FD  OUTPUT-FILE.
       01  OUTPUT-RECORD PIC X(40).
      *-----------------------
       WORKING-STORAGE SECTION.
       01  LENGTH1 PIC 999V99.
       01  WIDTH   PIC 999V99.
       01  AREA1   PIC 999V99.
       01  PERIM   PIC 999V99.

       01  EDIT-LENGTH1 PIC ZZZ9.99.
       01  EDIT-WIDTH   PIC ZZZ9.99.
       01  EDIT-AREA1   PIC ZZZ9.99.
       01  EDIT-PERIM   PIC ZZZ9.99.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

           DISPLAY "LENGTH: "
           ACCEPT LENGTH1

           DISPLAY "WIDTH: "
           ACCEPT WIDTH

           COMPUTE AREA1 = LENGTH1 * WIDTH
           COMPUTE PERIM = 2 * (LENGTH1 + WIDTH)

           MOVE LENGTH1 TO EDIT-LENGTH1
           MOVE WIDTH TO EDIT-WIDTH
           MOVE AREA1 TO EDIT-AREA1
           MOVE PERIM TO EDIT-PERIM


           DISPLAY "AREA: " FUNCTION TRIM (EDIT-AREA1)
           DISPLAY "PERIMETER: " FUNCTION TRIM (EDIT-PERIM)

           OPEN OUTPUT OUTPUT-FILE

           MOVE SPACES TO OUTPUT-RECORD
           STRING "LENGTH: " FUNCTION TRIM (EDIT-LENGTH1)
               DELIMITED BY SIZE
               INTO OUTPUT-RECORD
           END-STRING
           WRITE OUTPUT-RECORD

           MOVE SPACES TO OUTPUT-RECORD
           STRING "WIDTH: " FUNCTION TRIM (EDIT-WIDTH)
               DELIMITED BY SIZE
               INTO OUTPUT-RECORD
           END-STRING
           WRITE OUTPUT-RECORD

           MOVE SPACES TO OUTPUT-RECORD
           STRING "AREA: " FUNCTION TRIM (EDIT-AREA1)
               DELIMITED BY SIZE
               INTO OUTPUT-RECORD
           END-STRING
           WRITE OUTPUT-RECORD

           MOVE SPACES TO OUTPUT-RECORD
           STRING "PERIMETER: " FUNCTION TRIM (EDIT-PERIM)
               DELIMITED BY SIZE
               INTO OUTPUT-RECORD
           END-STRING
           WRITE OUTPUT-RECORD

           CLOSE OUTPUT-FILE

           DISPLAY "HAS BEEN WRITTEN IN LENGTHANDWIDHT.TXT"

           STOP RUN.
      ** add other procedures here
       END PROGRAM LENGTHANDWIDTH.
