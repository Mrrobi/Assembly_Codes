.model small
.stack 100h
.data
;Variables for input data
x db ?
y db ?
;msg
in1 db 'Enter 1st Number: $'
in2 db 'Enter 2nd number: $'
;Non - major result
adde db 'Add: ',?,'$'
subs db 'Sub: ',?,'$'
;Temporal variable
temp1 db ?
temp2 db ?
;Major Result
res db 'Or:  ',?,'$'
res2 db 'And: ',?,'$'
;New line maker
newline db 0dh,0ah,'$'
.code
;Main Code here
main proc
    mov ax,@data
    mov ds,ax
    ;input1
    lea dx,in1
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    sub al,30h
    mov x,al
    
    ;input 2
    mov ah,09h
    mov bl,12
    mov cx,17 
    int 10h
    mov ah,9
    lea dx,newline
    int 21h
    lea dx,in2
    int 21h
    mov ah,1 
    int 21h
    sub al,30h
    mov y,al
    
    
    ;addition
    mov bl,x
    add bl,y
    mov temp1,bl
    add temp1,30h
    mov bh,bl
    
    
    ;substraction
    mov cl,x
    sub cl,y
    mov temp2,cl
    add temp2,30h
    
    
    ;or
    or bl,cl
    add bl,30h
    
    
    ;and
    and bh,cl
    add bh,30h
    
   ; mov ah,09h
;    mov bl,12
;    mov cx,17 
;    int 10h
    ;All Printing
    mov ah,9
    mov cl,temp1
    mov adde+5,cl
    mov cl,temp2
    mov subs+5,cl
    mov res2+5,bh
    mov res+5,bl
    lea dx,newline
    int 21h
    lea dx,adde
    int 21h
    lea dx,newline
    int 21h
    lea dx,subs
    int 21h
    lea dx,newline
    int 21h
    lea dx,res
    int 21h
    lea dx,newline
    int 21h
    lea dx,res2
    int 21h
    mov ah,4ch
    int 21h
    main endp
end main
