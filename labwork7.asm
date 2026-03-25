.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'ENTER TWO CHARACTERS: $'
    
    CHAR1 DB ?               
    CHAR2 DB ?                

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

   
    MOV AH, 9
    LEA DX, MSG
    INT 21H

    
    MOV AH, 1
    INT 21H
    MOV CHAR1, AL


    MOV AH, 1
    INT 21H
    MOV CHAR2, AL

    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H


    MOV AH, 2
    MOV DL, CHAR1
    INT 21H

   
    MOV AH, 2
    MOV DL, CHAR2
    INT 21H

   
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN