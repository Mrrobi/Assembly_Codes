
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

.code
main proc
    mov ax,data
    mov ds,ax
    ;Write your code here
    mov cx,1
    l1:
        mov ah,1
        int 21h
        sub al,30h
        mov bh,al
        int 21h
        sub al,30h
        mov bl,al
        int 21h
        sub al,30h
        cmp al,1
        je jog
        cmp al,2
        je biyog
        cmp al,3
        je gun
        cmp al,4
        je vag
        cmp al,0
        je end
        jmp l
    l:
        loop l1
    jog:
        mov ah,2
        add bh,bl
        mov dl,bh
        add dl,30h
        int 21h
        jmp end
    biyog:
        
        mov ah,2
        sub bl,bh
        mov dl,bl
        add dl,30h
        int 21h
        jmp end
    gun:
        mov al,bl
        mov ah,0
        mov bl,bh
        mov bh,0
        mul bx
        mov dl,al
        add dl,30h
        mov ah,2
        int 21h
        jmp end    
    vag:
    
        mov al,bh
        mov ah,0
        mov bh,0
        div bx
        mov ah,2
        mov dl,al
        add dl,30h
        int 21h
        jmp end
        
    end:   
    mov ah,4ch
    int 21h
    main endp
end main





