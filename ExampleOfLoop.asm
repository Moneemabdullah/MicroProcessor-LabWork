.model small
.stack 100h
.data
   
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 3
    mov ax, 0
repeat:
    add ax, 2
loop repeat
         
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
