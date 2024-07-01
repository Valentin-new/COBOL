 IDENTIFICATION DIVISION.
 PROGRAM-ID. Calculadora.
 DATA DIVISION.
 WORKING-STORAGE SECTION.
 01 NUM1 PIC 9(4)V9(2) VALUE 0.
 01 NUM2 PIC 9(4)V9(2) VALUE 0.
 01 RESULTADO PIC 9(4)V9(2) VALUE 0.
 01 OPERACION PIC X VALUE SPACE.
 PROCEDURE DIVISION.
 DISPLAY "Ingrese el primer número: ".
 ACCEPT NUM1.
 DISPLAY "Ingrese el segundo número: ".
 ACCEPT NUM2.
 DISPLAY "Ingrese la operación (+, -, *, /): ".
 ACCEPT OPERACION.
 EVALUATE OPERACION
 WHEN '+'
 PERFORM SUMAR
 WHEN '-'
 PERFORM RESTAR
 WHEN '*'
 PERFORM MULTIPLICAR
 WHEN '/'
 PERFORM DIVIDIR
 WHEN OTHER
 DISPLAY "Operación no válida"
 END-EVALUATE.
 DISPLAY "El resultado es: " RESULTADO.
 STOP RUN.
 SUMAR.
 ADD NUM1 TO NUM2 GIVING RESULTADO.
 EXIT.
 RESTAR.
 SUBTRACT NUM2 FROM NUM1 GIVING RESULTADO.
 EXIT.
 MULTIPLICAR.
 MULTIPLY NUM1 BY NUM2 GIVING RESULTADO.
 EXIT.
 DIVIDIR.
 IF NUM2 = 0 THEN
 DISPLAY "Error: División por cero."
 MOVE 0 TO RESULTADO
 ELSE
 DIVIDE NUM1 BY NUM2 GIVING RESULTADO
 END-IF.
 EXIT.