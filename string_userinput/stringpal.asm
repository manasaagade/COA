include 'emu8086.inc'
print 'enter string'
lea dx,a
mov ah,10
int 21h
mov si,2 
mov di,2
mov cx,0
m:
    cmp a[si],'$'
    je rev
    inc si
    inc cx
    jmp m
rev:
    dec si 
    mov dl,0
    mov dl,a[si]
    mov b[di],dl
    inc di
    cmp si,2
    je p
    jne rev
p:
    mov si,2
    mov di,2
    jmp pal
pal:
    mov al,a[si]
    mov bl,b[di]
    cmp al,bl
    jne npal
    inc si
    inc di
    cmp a[si],'$'
    je palin
    jne pal
npal:
    printn
    print 'not palindrome'
    hlt
palin:
    printn
    print 'palindrome'
    hlt
ret
a db 10 dup('$')
b db 10 dup('$') 
    