.MODEL SMALL
.STACK 100H
.DATA

num1 DB ?          
num2 DB ?           ;variable dec.
num3 DB ?          
result DB ?

msg1 DB "ENTER FIRST NUMBER: $"
msg2 DB "ENTER SECOND NUMBER: $"
msg3 DB "ENTER THIRD NUMBER: $"        ;msg string
msg4 DB "FINAL RESULT IS: $"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    
    MOV AH, 9
    LEA DX, msg1           ;print string
    INT 21H                        
    
    MOV AH, 1
    INT 21H
    SUB AL, 30H            ;input
    MOV num1, AL
    
    
    MOV AH, 2
    MOV DL, 13
    INT 21H                ; new line
    MOV DL, 10
    INT 21H
    
    
    MOV AH, 9
    LEA DX, msg2
    INT 21H
    
    MOV AH, 1
    INT 21H
    SUB AL, 30H           ;input
    MOV num2, AL
    
    
    MOV AH, 2
    MOV DL, 13
    INT 21H              ;new line
    MOV DL, 10
    INT 21H
    
    
    MOV AH, 9
    LEA DX, msg3         ;print string
    INT 21H
    
    MOV AH, 1
    INT 21H
    SUB AL, 30H         ;input
    MOV num3, AL
    
    
    MOV AH, 2
    MOV DL, 13            ;new line
    INT 21H
    MOV DL, 10
    INT 21H
    
    
    MOV AL, num1      
    ADD AL, num2           ;calculation
    SUB AL, 3         
    SUB AL, num3      
    
   
    ADD AL, 30H                ;ASCII conversion
    MOV result, AL
    
    
    MOV AH, 9
    LEA DX, msg4
    INT 21H
    
    
    MOV AH, 2
    MOV DL, result
    INT 21H
    
   
    MOV AH, 2
    MOV DL, 13
    INT 21H             ;new line
    MOV DL, 10
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
