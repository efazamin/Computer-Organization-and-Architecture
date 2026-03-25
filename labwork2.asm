.model small
.stack 100h
.data
msg db "Hello World $"  ; No newline characters (0Ah, 0Dh)
 
.code
main proc
    mov ax, @data
    mov ds, ax
 
start:
    mov ah, 9           ; DOS function 09h: print string
    lea dx, msg         ; Load address of message
    int 21h             ; Print it
 
    jmp start           ; Unconditional jump (infinite loop)
 
main endp
end main