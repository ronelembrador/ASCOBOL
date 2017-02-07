      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Condition2.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  InputChar   PIC X VALUE SPACES.
           88  Vowel       VALUE "A", "E", "I", "O", "U".
           88  Consonant   VALUE "B" THRU "D", "F", "G", "H"
                                 "J" THRU "N", "P" THRU "T"
                                 "V" THRU "Z".
           88  Digit       VALUE "0" THRU "9".
           88  LowerCase   VALUE "a" THRU "z".
           88  ValidChar   VALUE "A" THRU "Z", "0" THRU "9".

       PROCEDURE DIVISION.
       Begin.
           PERFORM 3 TIMES
               ACCEPT InputChar
               EVALUATE TRUE
                   WHEN Vowel DISPLAY "Vowel."
                   WHEN Consonant DISPLAY "Consonant."
                   WHEN Digit DISPLAY "Digit."
                   WHEN LowerCase DISPLAY "Lower."
               END-EVALUATE
           END-PERFORM.
           STOP RUN.
       END PROGRAM Condition2.
