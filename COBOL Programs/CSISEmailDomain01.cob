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




       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM EmailDomain.
