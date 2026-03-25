.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'ENTER A CHARACTER: $'
    CHAR DB ?
    COUNTER DB 50  

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, MSG
    INT 21H

    MOV AH, 1
    INT 21H
    MOV CHAR, AL

     MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H 
 
    MOV CL, COUNTER  

PRINT_LOOP:
    MOV AH, 2      
    MOV DL, CHAR     
    INT 21H          

    DEC CL           
    JNZ PRINT_LOOP   

 
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN