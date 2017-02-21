      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PerformFormat1.
       PROCEDURE DIVISION.
       TopLevel.
           DISPLAY "In TopLevel, Starting to run program"
           PERFORM OneLevelDown
           DISPLAY "Back in Top Level".
           STOP RUN.

       TwoLevelsDown.
           DISPLAY ">>>>>>>> Now in TwoLevelsDown."
           PERFORM ThreeLevelsDown
           DISPLAY ">>>>>>>> Back in TwoLevelsDown.".

       OneLevelDown.
           Display ">>>> Now in OneLevelDown."
           PERFORM TwoLevelsDown
           DISPLAY ">>>> Back in OneLevelDown.".

       ThreeLevelsDown.
           DISPLAY ">>>>>>>>>>>> Now in ThreeLevelsDown.".

       END PROGRAM PerformFormat1.
