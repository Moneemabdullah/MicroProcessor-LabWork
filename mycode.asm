.model small           ; Use small memory model
.stack 100h            ; Set up 256-byte stack

.data
    msg db 'hellow World!$'  ; String to print (ends with '$')

.code

start:
    mov ax, @data      ; Init data segment
    mov ds, ax

    mov ah, 09h        ; Function: print string
    lea dx, msg        ; Load address of msg
    int 21h            ; Call DOS interrupt

    mov ah, 4Ch        ; Function: exit program
    mov al, 00         ; Return code 0
    int 21h            ; Call DOS interrupt

end start              ; Mark program entry point
