.model small           ; Use small memory model
.stack 100h            ; Set up 256-byte stack

.data
    num1 db 5          ; first number 
    num2 db 7          ; secound number
    result db 0        ; for storing the ans of subtraction

.code

start:         


    mov ax, @data      ; Init data segment
    mov ds, ax

    mov al, num1       ;load first number into al
    sub al, num2       ;Subtract secound number from al
    mov result, al     ;Store the result
    
    mov ah, 4ch
    int 21h

end start              ; Mark program entry point





