
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
var db ?
.code
main proc
    mov ax,data
    mov ds,ax
    ;Write your code here
    mov cx,0
    mov cl,5
    mov bl,5
    l1:
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        mov dl,'#'
        mov bl,5
        mov var,cl
        sub bl,var
        mov var,bl
        inc var
        l2:
            int 21h
            dec var
            cmp var,0
            jg l2
        
    loop l1
    
    
    mov ah,4ch
    int 21h
    main endp
end main





