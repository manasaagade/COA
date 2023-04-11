include 'emu8086.inc'
mov ah,10
print 'enter string : '
lea dx,str
mov str,20
int 21h
mov si,2
printn 


fun:    
   mov dl,str[si]
   cmp dl,'$'
   je last
   add si,1
   jmp fun
   
last:
   sub si,1
   jmp print
   
print:
    mov dl,str[si]
    mov ah,02
    int 21h
    jmp skip
skip:
    sub si,1
    cmp si,1
    je halt
    jmp print
halt:
    hlt
str db 10 dup('$')