
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
nwln db 0ah,0dh,'$'
e db 'Equal 0 or 2$'
o db 'Equal 1 or 3$'
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    sub al,30h
    cmp al,0
    je L1
    cmp al,2
    je L1
    cmp al,1
    je L4
    cmp al,3
    je L4
    jne L5
    L1:
        mov ah,9
        lea dx,nwln
        int 21h
        mov dl,'E'
        mov ah,2
        int 21h
        jmp end
    L2:
        mov ah,1 
        int 21h
        sub al,30h
        cmp al,2
        je L1
        jne L5
    L3:
        mov ah,1 
        int 21h
        sub al,30h
        cmp al,3
        je L4
        jne L5
    L4:
        lea dx,nwln
        mov ah,9
        int 21h
        mov dl,'O'
        mov ah,2
        int 21h
        jmp end
    L5:
        mov ah,9
        lea dx,nwln
        int 21h
        mov dl,'N'
        mov ah,2
        int 21h
    end:
    
    mov ah,4ch
    int 21h
    main endp
end main




