org 100h

.DATA
ANS DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV AL,5
    MOV CL,4
    MOV BL,AL
    SUB BL,1
    L:
    MUL BL
    SUB BL,1
    LOOP L
    
    MOV ANS,AL
    END MAIN
    
    ret
