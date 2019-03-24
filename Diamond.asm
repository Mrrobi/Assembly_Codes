
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

loop1 dw 5
loop2 dw 4
loop3 dw 1
loop4 dw ?

.code
main proc
    mov ax,data
    mov ds,ax
    ;Write your code here
    outer:
        dec loop1
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        mov cx,loop2
        cmp cx,0
        je here
        inner1:
            mov dl,' '
            int 21h
        loop inner1
        here:
        mov ax,loop3
        mov bx,2
        mul bx
        dec ax
        mov cx,ax
        cmp cx,0
        je condi
        inner2:
            mov ah,2
            mov dl,'*'
            int 21h
        loop inner2
        dec loop2
        inc loop3
    condi:
        cmp loop1,0
        je next
        jmp outer
    next:    
    mov loop2,1
    mov loop3,4    
    mov loop1,5
    outer2:
        dec loop1
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        mov cx,loop2
        cmp cx,5
        je here2
        inner12:
            mov dl,' '
            int 21h
        loop inner12
        here2:
        cmp loop3,0
        je condi2
        mov ax,loop3
        mov bx,2
        mul bx
        dec ax
        mov cx,ax
        inner22:
            mov ah,2
            mov dl,'*'
            int 21h
        loop inner22
        inc loop2
        dec loop3
    condi2:
        cmp loop1,0
        je end
        jmp outer2
    
    end:
    mov ah,4ch
    int 21h
    main endp
end main





