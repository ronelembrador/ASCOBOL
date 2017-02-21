      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Arithmetic1.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Cash    PIC 9(3) VALUE 123.
       01  Total   PIC 9(4) VALUE 1000.
       01  Cheques PIC 9(4) VALUE 1533.
       01  Males PIC 9(3) VALUE 611.
       01  Females PIC 9(4) VALUE 1225.
       01  TotalStudents   PIC 9(4) VALUE 0000.
       01  GrossPay   PIC 9(4) VALUE 1000.
       01  Deductions PIC 9(4) VALUE 1050.
       01  Tax PIC 9(4) VALUE 0250.
       01  PRSI PIC 9(4) VALUE 0175.
       01  Pension PIC 9(4) VALUE 0125.
       01  Pay PIC 9(4) VALUE 2750.
       01  NetPay PIC 9(4) VALUE 2750.
       01  Size1 PIC 9(4) VALUE 0250.
       01  Magnitude PIC 9(4)V99 VALUE 0123.45.
       01  VatRate PIC 9V99 VALUE 0.21.
       01  Sales PIC 9(4)V99 VALUE 1245.50.
       01  VAT PIC 9(4)V99 VALUE 2750.75.
       01  Fees PIC 99 VALUE 52.
       01  Members PIC 9(4) VALUE 1024.
       01  TotalFees PIC 9(4) VALUE 1743.
       01  SizeErrorMessage PIC X(5) VALUE "ERROR".
       01  Amount1 PIC 9(4) VALUE 2544.
       01  Amount2 PIC 9(3) VALUE 354.
       01  Qty PIC 9(5) VALUE 31255.
       01  Units PIC 9(3) VALUE 115.
       01  Average PIC 9(4) VALUE 0000.
       01  Quot PIC 9(3) VALUE 115.
       01  Rem PIC 9(2) VALUE 95.
       01  Result PIC 9(4) VALUE 3333.
       01  Euros PIC 9(4)V99 VALUE 1234.45.
       01  Punts PIC 9(4)V99 VALUE 1256.75.

       PROCEDURE DIVISION.
       Begin.
           DISPLAY "ADD EXAMPLES".
           DISPLAY Cash, " ", Total.
           ADD Cash TO Total.
           DISPLAY Cash, " ", Total.
           MOVE 1000 TO Total.
           ADD Cash,20 TO Total.
           DISPLAY Cash, " ", Total.
           MOVE 7777 TO Total.
           DISPLAY Cash, " ", Cheques, " ", Total.
           ADD Cash,Cheques GIVING Total.
           DISPLAY Cash, " ", Cheques, " ", Total.
           DISPLAY Males, " ", Females, " ", TotalStudents.
           ADD Males TO Females GIVING TotalStudents.
           DISPLAY Males, " ", Females, " ", TotalStudents.
           MOVE 2554 TO Total.
           DISPLAY "SUBTRACT EXAMPLES".
           DISPLAY Tax, " ", GrossPay, " ", Total.
           SUBTRACT Tax FROM GrossPay, Total.
           DISPLAY Tax, " ", GrossPay, " ", Total.
           MOVE 0750 TO Tax.
           DISPLAY Tax, " ", PRSI, " ", Pension, " ", Pay.
           SUBTRACT Tax, PRSI, Pension FROM Pay.
           DISPLAY Tax, " ", PRSI, " ", Pension, " ", Pay.
           MOVE 2750 TO Pay.
           DISPLAY Deductions, " ", Pay, " ", NetPay.
           SUBTRACT Deductions FROM Pay GIVING NetPay.
           DISPLAY Deductions, " ", Pay, " ", NetPay.
           DISPLAY "MULTIPLY EXAMPLES".
           DISPLAY Size1, " ", Magnitude.
           MULTIPLY 10 BY Size1, Magnitude.
           DISPLAY Size1, " ", Magnitude.
           DISPLAY VatRate, " ", Sales, " ", VAT.
           MULTIPLY VatRate BY Sales GIVING VAT.
           DISPLAY VatRate, " ", Sales, " ", VAT.
           DISPLAY Fees, " ", Members, " ", TotalFees.
           MULTIPLY Fees BY Members GIVING TotalFees
               ON SIZE ERROR DISPLAY SizeErrorMessage
           END-MULTIPLY.
           DISPLAY Fees, " ", Members, " ", TotalFees.
           DISPLAY "DIVIDE EXAMPLES".
           DISPLAY Amount1, " ",  Amount2.
           DIVIDE 15 INTO Amount1 ROUNDED, Amount2.
           DISPLAY Amount1, " ", Amount2.
           DISPLAY Qty, " ", Units, " ", Average.
           DIVIDE Qty BY Units GIVING Average ROUNDED.
           DISPLAY Qty, " ", Units, " ", Average.
           DISPLAY Quot, " ", Rem.
           DIVIDE 215 BY 10 GIVING Quot REMAINDER Rem.
           DISPLAY Quot, " ", Rem.
           DISPLAY Result.
           COMPUTE Result = 90 - 7 * 3 + 50 / 2.
           DISPLAY Result.
           DISPLAY Euros, " ", Punts.
           COMPUTE Euros ROUNDED = Punts / .78754.
           DISPLAY Euros, " ", Punts.

       END PROGRAM Arithmetic1.
