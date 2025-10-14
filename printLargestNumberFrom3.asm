.model small
.stack 100h
.data
    alc DB "The Largest Number is $"
.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, 5      ; A = 5
    mov bl, 8      ; B = 8
    mov cl, 3      ; C = 3

    mov dl, al     ; DL = current max (start with A)

    cmp bl, dl
    jle Skip1
    mov dl, bl     ; B is larger
Skip1:
    cmp cl, dl
    jle Skip2
    mov dl, cl     ; C is largest
Skip2:

    ; Print the string
    mov dx, offset alc
    mov ah, 09h
    int 21h

    ; Convert number in DL to ASCII
    add dl, '0'

    ; Print the character in DL
    mov ah, 02h
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h
main endp
end main
