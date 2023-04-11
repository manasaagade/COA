include 'emu8086.inc'
print 'enter string'
lea dx,a
mov ah,10
int 21h
mov si,2 
mov di,0
mov cx,0
m:
    cmp a[si],'$'
    je rev
    inc cx
    inc si 
    jmp m
rev:
    dec si
    mov dl,a[si]
    mov b[di],dl
    inc di
    cmp si,2
    je end
    jne rev 
end: 
    printn
    lea dx,b
    mov ah,09
    int 21h
    hlt
ret
a db 10 dup('$')
b db 10 dup('$')