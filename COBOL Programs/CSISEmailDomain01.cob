      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EmailDomain.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CountryFile ASSIGN TO "COUNTRYCODES.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
           SELECT GraduateInfoFile ASSIGN TO "GRADINFO.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
           SELECT SortedDomainFile ASSIGN TO "SORTEDDOMAIN.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
           SELECT WorkFile ASSIGN TO "WORK.TMP".


       DATA DIVISION.
       FILE SECTION.
       FD  CountryFile.
       01  CountryRec.
           02 CountryCode              PIC XX.
           02 CountryName              PIC X(26).


       FD  GraduateInfoFile.
       01  GradInfoRecGIF.
           02 StudentName              PIC X(25).
           02 GradYear                 PIC 9(4).
           02 CourseCode.
               03 FILLER               PIC 9.
                   88 CSISGraduate         VALUE "1" THRU "5".
                   88 NonCSISGraduate      VALUE "6", "7".
           02 EmailAddr                PIC X(28).
           02 EmailDomainName          PIC X(20).
           02 CountryCodeGIF           PIC XX.


       FD  SortedDomainFile.
       01  GradInfoRecSDF.
           02 EmailDomainNameSDF       PIC X(20).
           02 StudentNameSDF           PIC X(25).
           02 GradYearSDF              PIC 9(4).
           02 CourseName               PIC X(25).
           02 CountryNameSDF           PIC X(26).


       FD  WorkFile.
       01  WorkRec.
           02 StudentNameWF            PIC X(25).
           02 GradYearWF               PIC 9(4).
           02 CourseCodeWF             PIC 9.
           02 EmailDomainNameWF        PIC X(20).
           02 CountryCodeWF            PIC XX.



       WORKING-STORAGE SECTION.
       01  CourseTable.
           02 CourseValues.
               03 FILLER   PIC X(25) VALUE "Computer Systems".
               03 FILLER   PIC X(25) VALUE "Grad. Dip. Computing".
               03 FILLER   PIC X(25) VALUE "Grad. Dip. Localisation".
               03 FILLER   PIC X(25) VALUE "Grad. Dip. Music".
               03 FILLER   PIC X(25) VALUE "Computing with French".

       01  CountryTable.
           02 Country OCCURS 243 TIMES.
               03 CountryCode              PIC XX.
               03 CountryName              PIC X(26).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM EmailDomain.
