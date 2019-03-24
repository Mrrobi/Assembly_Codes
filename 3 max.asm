
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
    ;Input 1
    mov ah,9
    lea dx,ein1
    int 21h
    mov ah,1
    int 21h
    mov x,al
    
    ;input 2
    mov ah,9
    lea dx,nwln
    int 21h
    lea dx,ein2
    int 21h
    mov ah,1
    int 21h
    mov cl,al
    
    ;input 3
    mov ah,9
    lea dx,nwln
    int 21h
    lea dx,ein3
    int 21h
    mov ah,1
    int 21h
    mov bh,al
    
    ;Compare
    cmp cl,x
    jg l2
    jl l1
    
    
    l1:
        mov ch,x
        jmp l3
    l2:
        mov ch,cl
        jmp l3
    l3:
        cmp bh,ch
        jg l4
        jl l5
    l4:     ;Output Label
        mov ah,9
        lea dx,nwln
        int 21h
        lea dx,opt
        int 21h
        mov dl,bh
        mov ah,2
        int 21h
        jmp end
    l5:     ; Output Label
        mov ah,9
        lea dx,nwln
        int 21h
        lea dx,opt
        int 21h
        mov dl,ch
        mov ah,2
        int 21h
        jmp end
    end:
    mov ah,4ch
    int 21h
    main endp
end main




