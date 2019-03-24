
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
x db ?
y db ?
temp db ?
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    mov x,al
    sub x,30h
    int 21h
    mov y,al
    sub y,30h
    mov ah,2
    mov bl,x
    add bl,y
    mov temp ,bl
    add temp,30h
    mov dl,temp
    int 21h
    mov cl,x
    sub cl,y
    mov temp ,cl
    add temp,30h
    mov dl,temp
    int 21h
    or bl,cl
    add bl,30h
    mov dl,bl
    
    
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main




