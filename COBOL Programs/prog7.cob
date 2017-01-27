      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MovePractice2.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  GrossPay    PIC 9(4)V99 VALUE 7325.78.
       PROCEDURE DIVISION.
       Begin.
           DISPLAY GrossPay.
           MOVE 12.4 TO GrossPay.
           DISPLAY GrossPay.
           MOVE 123.456 TO GrossPay.
           DISPLAY GrossPay.
           MOVE 12345.757 TO GrossPay.
           DISPLAY GrossPay.
           MOVE ZEROS TO GrossPay.
           DISPLAY GrossPay.
           MOVE 256347 TO GrossPay.
           DISPLAY GrossPay.
           STOP RUN.
       END PROGRAM MovePractice2.
