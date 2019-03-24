
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
msg1 db 'Zero$'
msg2 db 'Positive$'
newline db 0dh,0ah,'$'
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    sub al,30h
    mov ah,9
    cmp al,0
    je L1
    jg L2
    jl L3
    L1: 
        lea dx,newline
        int 21h
        lea dx,msg1
        mov ah,9
        int 21h
        jmp L3
    L2:
        lea dx,newline
        int 21h
        lea dx,msg2
        mov ah,9
        int 21h
    L3:    
    mov ah,4ch
    int 21h
    main endp
end main




