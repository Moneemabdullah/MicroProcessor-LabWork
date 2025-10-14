.model small
.stack 100h
.data
.code
main proc
    mov ax, 6
    mov bx, 8  

    cmp ax, bx
    jl smaller
    mov cx, 1 ; ax >= bx
    jmp done    
   
smaller:
    mov cx, 0
done:
         
    mov dl, cl
    add dl, '0'     ; Convert 0 or 1 to ASCII '0' or '1'
    mov ah, 02h     ; DOS print character function
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h    
   
main endp
end main
