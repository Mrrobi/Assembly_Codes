
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
input db 'Enter Student number: $'
nwline db 0ah,0dh,'$'
res db 'Grade is: ',?,' $'
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,input
    int 21h
    mov ah,1
    int 21h
    
    sub al,30h
    
    cmp al,2
    jl l1
    cmp al,4
    jl l2
    cmp al,5
    jl l3
    cmp al,6
    jl l4
    cmp al,8
    jle l5
    jmp l6
    
    l1:
        mov res+11 , 'F'
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
        jmp end
    l2:
        mov res+11 , 'E'
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
        jmp end
    l3:
        mov res+11 , 'D'
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
        jmp end
    l4:
        mov res+11 , 'C'
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
        jmp end
    l5:
        mov res+11 , 'B'
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
        jmp end
    l6:
        mov res+11 , 'A'
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
    end:
    
    
    mov ah,4ch
    int 21h
    main endp
end main




