include 'emu8086.inc'
print 'enter string:'
lea dx,a
mov ah,10
int 21h
printn 
print 'given string is :'
lea dx,a+2
mov a,10
mov ah,09
int 21h 
printn 
printn
print 'enter string to search:'
lea dx,b
mov ah,10
int 21h

printn
print 'given string is :'
lea dx,b+2
mov b,10
mov ah,09
int 21h
mov si,2
mov di,2
mov dl,'$'
label:
    mov cl,b[si]
    mov bl,a[di] 
    cmp cl,bl
    jne labellll
    jmp label2
labellll:
    inc di 
    cmp dl,a[di]
    jne label
    printn
    print 'given string is not a substring' 
    hlt
label2:
    inc si
    inc di
    cmp b[si],dl
    jne label
    printn
    print 'given string is a substring'
    hlt 
a db 20 dup('$')
b db 20 dup('$')
define_print_num
define_print_num_uns

