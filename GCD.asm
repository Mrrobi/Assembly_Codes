.model small
.stack 100h
.data
.code

main proc
    mov cl,10
    mov ch,20
    mov dh,1
    cmp cl,ch
    jne loop
    jmp end
    loop:
        cmp cl,ch
        jg l1
        jle l2
        
        l1:
            sub cl,ch
            jmp check
        l2:
            sub ch,cl
            jmp check
        check:
            cmp cl,ch
            jne loop
            jmp end
         
        
    end:
       mov dh,cl
       mov ah,2
       mov dl,dh
       add dl,30h
       int 21h
    mov ah,4ch
    int 21h
    main endp
end main
    