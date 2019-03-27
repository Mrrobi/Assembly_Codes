
.model small
.stack 100h
.data

range dw 13
lupVar dw 2

.code


proc main
    mov ax,@data
    mov ds,ax
    
    
    mov cx,lupVar
    
    
    jmp LUP
    
    L1:
        
        mov ax,lupVar
        mov cl,al
        dec cl
        mov ch,2
        jmp inner
        l2: 
            mov ax,lupVar
            mov bl,ch
            xor dx,dx
            div bx
            cmp dx,0
            je notPrint
            inc ch
        
        inner:
            cmp ch,cl
            jle l2
            jmp print
        print:
            mov dx,lupVar
            add dl,30h
            mov ah,2
            int 21h
            mov dl," "
            int 21h
        notPrint:
            inc lupVar
            mov cx,lupVar
            jmp LUP
            
    LUP:
       cmp cx,range
       jle L1 




end:
mov ah,4ch
int 21h
main endp
end main



