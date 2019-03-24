.model small
.stack 100h
.data

var dw 0
var2 dw 0

.code


main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,15
    mov var2,15
    l1:
        mov ax,30
        mov bx,var2
        div bx
        cmp dx,0
        je l2
        jmp l3
        
        l2:
            add var,cx
            mov dx, 0
            ;cmp var,28
            ;je ac
        l3:
     dec var2
     loop l1
     
     ;mov dx,var  
    
    ;int 21h
    mov ah,4ch
    int 21h
    main endp
end main