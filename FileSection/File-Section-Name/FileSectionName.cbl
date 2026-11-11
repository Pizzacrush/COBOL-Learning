      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. TEST1.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OUTPUT-FILE
               ASSIGN TO "TEXT.TXT"
               ORGANIZATION IS LINE SEQUENTIAL.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
       FD  OUTPUT-FILE.
       01  OUTPUT-RECORD PIC X(20).
      *-----------------------
       WORKING-STORAGE SECTION.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
           OPEN OUTPUT OUTPUT-FILE

           MOVE "KEVIN WAS HERE" TO OUTPUT-RECORD
           WRITE OUTPUT-RECORD

           CLOSE OUTPUT-FILE

           DISPLAY "KEVIN WAS HERE WAS WRITTEN IN THE FILE"

           STOP RUN.

      ** add other procedures here
       END PROGRAM TEST1.
