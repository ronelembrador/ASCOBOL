      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MovePractice.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  StudentName.
           02  FirstName   PIC X(8) VALUE "JOHN".
           02  Surname   PIC X(8) VALUE "POWERS".
       PROCEDURE DIVISION.
       Begin.
           DISPLAY StudentName.
           MOVE "COUGHLAN" TO Surname.
           DISPLAY StudentName.
           MOVE "TOM" TO FirstName.
           DISPLAY StudentName.
           MOVE "FITZPATRICK" TO Surname.
           DISPLAY StudentName.
           MOVE "ALEXANDER" TO FirstName.
           DISPLAY StudentName.
           MOVE "JOHN    RYAN" TO StudentName.
           DISPLAY StudentName.
           MOVE ALL "x" TO StudentName.
           DISPLAY StudentName.
           STOP RUN.
       END PROGRAM MovePractice.
