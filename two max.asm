
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
x db ?
y db ?
nwln db 0dh,0ah,'$'
ein1 db 'Enter Input 1: $'
ein2 db 'Enter Input 2: $'
ein3 db 'Enter Input 3: $'
opt db 'Your Output: $'
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,nwln
    int 21h
    lea dx,ein1
    int 21h
    
    mov ah,1
    int 21h
    mov x,al
    mov ah,9
    lea dx,nwln
    int 21h
    lea dx,ein2
    int 21h
    mov ah,1
    int 21h
    mov cl,al
    cmp al,x
    jg l2
    jl l1
    l1:
        mov ah,9
        lea dx,nwln
        int 21h
        lea dx,opt
        int 21h
        mov dl,x
        mov ah,2
        int 21h
        jmp end
    l2:
        mov ah,9
        lea dx,nwln
        int 21h
        lea dx,opt
        int 21h
        mov dl,cl
        mov ah,2
        int 21h
        jmp end
    end:
    mov ah,4ch
    int 21h
    main endp
end main




