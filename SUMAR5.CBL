      ******************************************************************
      * Author: VALENTIN VLADU
      * Date: 24/02/2024
      * Purpose: SUMAR PRIMEROS 5 NUMEROS NATURALES
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       
       01 SUMAR        PIC 9(2) VALUE 0.
       
       01 CONTADOR     PIC 9 VALUE 0.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
            DISPLAY "SUMAR LOS 5 PRIMEROS NUMEROS NATURALES "
            STOP RUN.
      ** add other procedures here
       
       SUMA-NUMEROS-NATURALES.
           COMPUTE CONTADOR = CONTADOR + 1.
           COMPUTE SUMAR = SUMAR + CONTADOR.
       
           DISPLAY "CONTADOR" CONTADOR "SUMA PARCIAL NATURALES" SUMAR.
       
       END PROGRAM YOUR-PROGRAM-NAME.

