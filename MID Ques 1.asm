
.model small
.stack 100h
.data
var dw 19
Quotient dw ?
Reminder dw ?
.code


main proc
    mov ax,@data
    mov ds,ax
    
    mov ax,var
    mov bx,3
    
    jmp L1Check
    L1:
      sub ax,bx
      inc Quotient
    L1check:
        cmp ax,bx
        jge L1
        jl end  
    
    end:
    mov Reminder,ax
    mov ah,2   
    mov bx,Quotient
    mov dl,bl
    add dl,30h
    int 21h
    
    mov ax,Reminder
    mov dl,al
    mov ah,2
    add dl,30h
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main




