.model small
.stack 100h
.data
a db 'fist input $'
b db 'second input $'
d db 'third input $'
c db 'result $'
msg db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1 
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h 
    
    
    mov ah,1 
    int 21h
    mov bh,al 
    
   
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    
    mov ah,9
    lea dx,c
    int 21h
    
    add bl,bh 
    sub bl,48 
   
    mov ch,bl
    add ch,cl
    sub ch,48 
    mov msg,ch
    
    
    mov ah,2
    mov dl,msg
    int 21h
    
    
 exit:
    mov ah,4ch
    int 21h
    main endp
end main
