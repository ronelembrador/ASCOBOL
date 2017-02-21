      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Iteration-Program.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Num1        PIC 9   VALUE ZEROS.
       01  Num2        PIC 9   VALUE ZEROS.
       01  Result      PIC 99  VALUE ZEROS.
       01  Operator    PIC X   VALUE ZEROS.

       PROCEDURE DIVISION.
       Calculator.
           PERFORM 5 TIMES
               ACCEPT Num1
               ACCEPT Num2
               ACCEPT Operator
               IF Operator = "+" THEN
                   ADD Num1, Num2 GIVING Result
               END-IF
               IF Operator = "*" THEN
                   MULTIPLY Num1 BY Num2 GIVING Result
               END-IF
               DISPLAY "Result is = ", Result
           END-PERFORM.
           STOP RUN.
       END PROGRAM Iteration-Program.
