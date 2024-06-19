      ******************************************************************
      * Author:Valentin
      * Date: 19/06/2024
      * Purpose: A calculator
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. REMEMBER-THE-OLDC-ALCULATOR.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
       
       WORKING-STORAGE SECTION.
       01 NUM1     PIC 9(3).
       01 NUM2     PIC 9(3).
       
       01 RESULTADO PIC 9(6). 
       
       01 OPCION PIC 9(1).
       
       
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       INICIO.
       
           
      **
      * The main procedure of the program
      **
            DISPLAY "INTRODUCE EL PRIMER VALOR".
            ACCEPT NUM1.
            DISPLAY "INTRODUZCA EL SEGUNDO VALOR".
            ACCEPT NUM2.
            
            DISPLAY "INTRODUZCA VALOR ENTRE 1-4".
            
            
            
            DISPLAY "1. SUMA"
            DISPLAY "2. RESTA"
            DISPLAY "3. MULTIPLICAR"
            DISPLAY "4. DIVIDIR"
            
            ACCEPT OPCION.
            
           IF OPCION = 1
            PERFORM SUMA
            
           END-IF.
           
           IF OPCION = 2
               PERFORM RESTA
               
           END-IF.
           
           IF OPCION = 3
            PERFORM MULT
            
           END-IF.
           
           IF OPCION = 4
            PERFORM DIV
            
           END-IF.
           
           
            
            STOP RUN.
            
           SUMA.  
                COMPUTE RESULTADO = NUM1 + NUM2.
                
                DISPLAY "ESTE ES EL RESULTADO DE LA SUMA" RESULTADO.
                
           RESTA.
               COMPUTE RESULTADO = NUM1 - NUM2.
                
                DISPLAY "ESTE ES EL RESULTADO" RESULTADO.
                
           MULT.
               COMPUTE RESULTADO = NUM1 * NUM2.
                
                DISPLAY "ESTE ES EL RESULTADO DE LA SUMA" RESULTADO.
           DIV.
               COMPUTE RESULTADO = NUM1 /  NUM2.
                
                DISPLAY "ESTE ES EL RESULTADO DE LA SUMA" RESULTADO.
           
             
           END PROGRAM REMEMBER-THE-OLDC-ALCULATOR.
       
 
