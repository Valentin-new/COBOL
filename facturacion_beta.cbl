      ******************************************************************
      * Author:
      * Date:
      * Purpose:
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

       01 EMPLEADO       PIC X(10).
       01 SALARIO        PIC 9(5)V9(2).
       01 INCREMENTO     PIC 9V99 VALUE 0.05.
       01 MES            PIC 9(5)V9(2).
       01 N              PIC 9(1).
       01 I              PIC 9(1).
       01 RESULTADO      PIC 9(5)V9(2).
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       INICIO.

            DISPLAY "INTRODUCE EL NUMERO DE EMPLEADOS"
            ACCEPT N.
            PERFORM NOMINA VARYING I FROM 1 BY 1 UNTIL I > N.

            STOP RUN.
       NOMINA.
             DISPLAY "INTRODUCE NOMBRE DEL EMPLADO"
             ACCEPT EMPLEADO

             DISPLAY "INTRODUZCA SU SALARIO "
             ACCEPT SALARIO

             COMPUTE MES = SALARIO * INCREMENTO
             COMPUTE RESULTADO = MES + SALARIO
             DISPLAY "EL SALARIO DE:" EMPLEADO "ES" RESULTADO.
