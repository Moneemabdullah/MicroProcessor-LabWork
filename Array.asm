.MODEL SMALL
.STACK 100H
.DATA 
    nums DB 5, 10, 15
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AL, nums[2]     ; AL = 15
    CALL PRINT_NUMBER
    
    MOV AH, 4CH
    INT 21H
MAIN ENDP


