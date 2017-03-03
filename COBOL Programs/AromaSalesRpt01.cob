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


      * The StudentDetails record has the description shown below.
      * But in this program we don't need to refer to any of the items in
      * the record and so we have described it as PIC X(32)
      * 01 StudentDetails
      *    02  StudentId       PIC 9(7).
      *    02  StudentName.
      *        03 Surname      PIC X(8).
      *        03 Initials     PIC XX.
      *    02  DateOfBirth.
      *        03 YOBirth      PIC 9(4).
      *        03 MOBirth      PIC 9(2).
      *        03 DOBirth      PIC 9(2).
      *    02  CourseCode      PIC X(4).
      *    02  Gender          PIC X.

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

       PROCEDURE DIVISION.
       Begin.
           SORT WorkFile ON ASCENDING KEY WStudentId
                INPUT PROCEDURE IS GetStudentDetails
                GIVING StudentFile.
       STOP RUN.


       GetStudentDetails.
           DISPLAY "Enter student details using template below."
           DISPLAY "Enter no data to end.".
           DISPLAY "Enter - StudId, Surname, Initials, YOB, MOB, DOB, ",
           "Course, Gender"
           DISPLAY "NNNNNNNSSSSSSSSIIYYYYMMDDCCCCG"
           ACCEPT  WorkRec.
           PERFORM UNTIL WorkRec = SPACES
               RELEASE WorkRec
               ACCEPT WorkRec
           END-PERFORM.
       END PROGRAM AromaSales.
