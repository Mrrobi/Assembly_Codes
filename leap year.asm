
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
var dw 2000
.code
main proc
    mov ax,data
    mov ds,ax
    ;Write your code here
    
    
    mov ax,var
    mov bx,400
    xor dx,dx
    div bx
    cmp dx,0
    je ac
    
    mov ax,var
    mov bx,4
    xor dx,dx
    div bx
    cmp dx,0
    je T1
    
    
    jmp nac
    
    T1:
        mov ax,var
        mov bx,100
        xor dx,dx
        div bx
        cmp dx,0
        jne ac
        jmp nac
    
    
    ac:
    
        mov dl,'L'
        mov ah,2
        int 21h
        jmp end
    
    nac:
        mov dl,'N'
        mov ah,2
        int 21h
    end:
    mov ah,4ch
    int 21h
    main endp
end main





