 IDENTIFICATION DIVISION.
 PROGRAM-ID. SumaDosNumeros.
 DATA DIVISION.
 WORKING-STORAGE SECTION.
 01 NUM1 PIC 9(4) VALUE 0.
 01 NUM2 PIC 9(4) VALUE 0.
 01 SUMA PIC 9(4) VALUE 0.
 PROCEDURE DIVISION.
 DISPLAY "Ingrese el primer número: ".
 ACCEPT NUM1.
 DISPLAY "Ingrese el segundo número: ".
 ACCEPT NUM2.
 ADD NUM1 TO NUM2 GIVING SUMA.
 DISPLAY "La suma es: " SUMA.
 STOP RUN.
