      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AromaSales.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT Sales ASSIGN TO "SALES.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
           SELECT SalesSorted ASSIGN TO "SORTEDSALE.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
           SELECT AromaSales ASSIGN TO "AROMASALES.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
           SELECT WorkFile ASSIGN TO "WORK.TMP".


       DATA DIVISION.
       FILE SECTION.
       FD  Sales.
       01  SalesRecord.
           02  CustID           PIC 9(5).
           02  CustName         PIC X(20).
           02  OilID.
               03 FILLER               PIC X.
                   88 Essential            VALUE "E".
                   88 Base                 VALUE "B".
               03 OilNum               PIC 99.
           02  UnitSize.
               03 FILLER               PIC 9.
                   88 2ML                 VALUE "2".
                   88 5ML                 VALUE "5".
                   88 9ML                 VALUE "9".
           02  UnitsSold               PIC 9(3).


       FD  SalesSorted.
       01  SortedSale                  PIC X(33).

       FD  AromaSales.
       01  PrintLine                   PIC X(65).


       SD  WorkFile.
       01  WorkRecord.
           02  WCustID                 PIC 9(5).
           02  WCustName               PIC X(20).
           02  WOilID.
               03 FILLER               PIC X.
               03 WOilNum              PIC 99.
           02  WUnitSize.
               03 FILLER               PIC 9.
           02  WUnitsSold              PIC 9(3).


       WORKING-STORAGE SECTION.

       01  Oils-Table.
           02  Oil-Cost-Values.
               03 FILLER               PIC X(40)
                       VALUE "0041003200450050002910250055003900650075".
               03 FILLER               PIC X(40)
                       VALUE "0080004400500063006500550085004812500065".
               03 FILLER               PIC X(40)
                       VALUE "0060005500670072006501250085006511150105".
           02  FILLER REDEFINES Oil-Cost-VALUES.
               03 OIL-COST           PIC 99V99 OCCURS 30 TIMES.

       01  OilSold                     PIC 9(4).
       01  SaleValue                   PIC 9(7)V99.


       01  HeadingLine.
           02  FILLER                  PIC X(14) VALUE SPACES.
           02  Title                   PIC X(30)
                       VALUE "AROMAMORA SUMMARY SALES REPORT".
       01  Uline.
           02  FILLER                  PIC X(13) VALUE SPACES.
           02  Hline                   PIC X(32) VALUE ALL "-".





       PROCEDURE DIVISION.
       Begin.


       END PROGRAM AromaSales.
