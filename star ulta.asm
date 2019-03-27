
.model small
.stack 100h
.data

loop1 dw 6
loop2 dw 6

.code


proc main
mov ax,@data
mov ds,ax



    mov cx,loop1
    
    L1:
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        mov cx,loop2
        l2:
            mov dl,'*'
            int 21h
        loop l2
        dec loop2
        mov cx,loop1
        dec loop1
    loop L1




end:
mov ah,4ch
int 21h
main endp
end main



