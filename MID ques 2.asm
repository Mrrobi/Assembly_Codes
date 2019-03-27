
.model small
.stack 100h
.data
var1000 dw 0
var500 dw 0
var100 dw 0
var50 dw 0
var20 dw 0
var10 dw 0
.code


main proc
    mov ax,@data
    mov ds,ax
    mov ax,1030
    cmp ax,1000
    jge vag1000
    vag1000:
       mov bx,1000
       xor dx,dx
       div bx
       mov var1000,ax
       
       
       
       mov ax,dx
    cmp ax,500
    jge vag500
    jl l1
    vag500:
       mov bx,500
       xor dx,dx
       div bx
       mov var500,ax
       

       
       
       mov ax,dx
       
    l1:   
    cmp ax,100
    jge vag100
    jl l2
    vag100:
       mov bx,100
       xor dx,dx
       div bx
       mov var100,ax
       
       
       
       
       mov ax,dx
    l2:
    cmp ax,50
    jge vag50
    jl l3
    vag50:
       mov bx,50
       xor dx,dx
       div bx
       mov var50,ax 
       
       
       
       
       mov ax,dx
    l3:   
    cmp ax,20
    jge vag20
    jl l4
    vag20:
       mov bx,20
       xor dx,dx
       div bx
       mov var20,ax
      
       
       
       mov ax,dx
    l4:
    cmp ax,10
    jge vag10
    vag10:
       mov bx,10
       xor dx,dx
       div bx
       mov var10,ax
       
       
       mov ax,dx 
    end: 
    
       
       mov ax,var1000
       mov dl,al
       add dl,30h
       mov ah,2
       int 21h
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       mov ax,var500
       mov dl,al
       add dl,30h
       mov ah,2
       int 21h
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       mov ax,var100
       mov dl,al
       add dl,30h
       mov ah,2
       int 21h
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       mov ax,var50
       mov dl,al
       add dl,30h
       mov ah,2
       int 21h
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       mov ax,var20
       mov dl,al
       add dl,30h
       mov ah,2
       int 21h
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       mov ax,var10
       mov dl,al
       add dl,30h
       mov ah,2
       int 21h
    mov ah,4ch
    int 21h
    main endp
end main




