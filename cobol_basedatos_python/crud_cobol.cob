       IDENTIFICATION DIVISION.
       PROGRAM-ID. CRUDOperations.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT RESULT-FILE ASSIGN TO 'result.txt'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  RESULT-FILE.
       01  RESULT-RECORD   PIC X(200).

       WORKING-STORAGE SECTION.
       01  CMD             PIC X(200).
       01  WS-OPERATION    PIC X(10).
       01  WS-ID           PIC 9(4).
       01  WS-NAME         PIC X(100).
       01  WS-EXIT         PIC X(3) VALUE 'NO '.
       01  WS-EOF          PIC X(3) VALUE 'NO '.
       01  EXIT-STATUS     PIC S9(4) BINARY.

       PROCEDURE DIVISION.
           MAIN-LOGIC.
               PERFORM UNTIL WS-EXIT = 'YES'
                DISPLAY "operation: create, read, update, delete, exit"
                   ACCEPT WS-OPERATION

                   EVALUATE TRUE
                       WHEN WS-OPERATION = "create"
                           PERFORM CREATE-RECORD
                       WHEN WS-OPERATION = "read"
                           PERFORM READ-RECORDS
                       WHEN WS-OPERATION = "update"
                           PERFORM UPDATE-RECORD
                       WHEN WS-OPERATION = "delete"
                           PERFORM DELETE-RECORD
                       WHEN WS-OPERATION = "exit"
                           MOVE "YES" TO WS-EXIT
                       WHEN OTHER
                           DISPLAY "Invalid operation."
                   END-EVALUATE

                   DISPLAY "Operation completed."
               END-PERFORM

               DISPLAY "Exiting the program."
               STOP RUN.

           CREATE-RECORD.
               DISPLAY "Enter name:"
               ACCEPT WS-NAME
               MOVE "python3 /app/crud_db.py create " TO CMD
               MOVE WS-NAME TO CMD (33:100)  
               DISPLAY "Command to execute: ", CMD
               CALL 'SYSTEM' USING CMD GIVING EXIT-STATUS
               DISPLAY "Exit status: ", EXIT-STATUS
               .

           READ-RECORDS.
               MOVE "python3 /app/crud_db.py read > result.txt" TO CMD
               CALL 'SYSTEM' USING CMD GIVING EXIT-STATUS
               OPEN INPUT RESULT-FILE
               PERFORM UNTIL WS-EOF = 'YES'
                   READ RESULT-FILE INTO RESULT-RECORD
                   AT END
                       MOVE "YES" TO WS-EOF
                   NOT AT END
                       DISPLAY RESULT-RECORD
               END-PERFORM
               CLOSE RESULT-FILE
               MOVE "NO " TO WS-EOF
               DISPLAY "Exit status: ", EXIT-STATUS
               .

           UPDATE-RECORD.
               DISPLAY "Enter ID to update:"
               ACCEPT WS-ID
               DISPLAY "Enter new name:"
               ACCEPT WS-NAME
               MOVE "python3 /app/crud_db.py update " TO CMD
               MOVE WS-ID TO CMD (32:4)
               MOVE " " TO CMD (36:1)
               MOVE WS-NAME TO CMD (37:100)
               DISPLAY "Command to execute: ", CMD
               CALL 'SYSTEM' USING CMD GIVING EXIT-STATUS
               DISPLAY "Exit status: ", EXIT-STATUS
               .

           DELETE-RECORD.
               DISPLAY "Enter ID to delete:"
               ACCEPT WS-ID
               MOVE "python3 /app/crud_db.py delete " TO CMD
               MOVE WS-ID TO CMD (32:4)
               DISPLAY "Command to execute: ", CMD
               CALL 'SYSTEM' USING CMD GIVING EXIT-STATUS
               DISPLAY "Exit status: ", EXIT-STATUS
               .

       END PROGRAM CRUDOperations.
