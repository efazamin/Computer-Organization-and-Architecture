.MODEL SMALL
.STACK 100H

.DATA
    msg1    DB 'Enter a number: $'
    posMsg  DB 13,10, 'Positive$'
    negMsg  DB 13,10, 'Negative$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, msg1
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    CMP AL, '-'
    JE READ_NEG

    SUB AL, 30H
    JMP POSITIVE

READ_NEG:
    MOV AH, 01H
    INT 21H
    SUB AL, 30H
    JMP NEGATIVE

POSITIVE:
    LEA DX, posMsg
    MOV AH, 09H
    INT 21H
    JMP EXIT

NEGATIVE:
    LEA DX, negMsg
    MOV AH, 09H
    INT 21H
    JMP EXIT

EXIT:
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN