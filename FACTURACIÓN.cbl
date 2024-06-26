      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.

       FILE SECTION.

       WORKING-STORAGE SECTION.
       01 EMPLEADO PIC X(56).
       01 SALARIO PIC 9(5)V9(2).
       01 INCREMENTO PIC 9V99 VALUE 0.05.
       01 MES PIC 9(10)V9(2).
       01 N PIC 9(1).
       01 I PIC 9(1).
       PROCEDURE DIVISION.
       INICIO.
          DISPLAY "INGRESE EL NUMERO DE EMPLEADOS".
          ACCEPT N.
          PERFORM NOMINA VARYING I FROM 1 BY 1 UNTIL I > N.
          STOP RUN.

       NOMINA.
           DISPLAY "iNTGRESE EN NOMBRE EMPLEADO".
           ACCEPT EMPLEADO.
           DISPLAY "INGRESE EL SUELDO:".
           ACCEPT SALARIO.
           COMPUTE MES = SALARIO * INCREMENTO.
           DISPLAY "EMPLEADO: " EMPLEADO.
           DISPLAY "SUELDO: " MES.
