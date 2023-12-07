# Program to find a number is armstrong

include 'emu8086.inc'
print 'enter a number : '
call scan_num           
mov h,cx
mov ax,cx
mov cx,10
mov bx,00    
gotoxy 0,1

count:
    cmp ax,00
    je f
    mov dx,00
    div cx
    inc c
    jne count
    
f:
    mov ax,h
    mov dx,c
    mov co,dx
    jmp g

g:
    cmp ax,00
    je s
    mov dx,00
    div cx
    mov r,dx
    mov q,ax
    mov ax,r
    jmp n
    
n:
    dec c
    cmp c,00
    je p
    mul r
    jne n
    
p:
    add bx,ax
    mov dx,co
    mov c,dx
    mov ax,q
    jmp g
    
s:
    cmp h,bx
    je t
    cmp bx,h
    jne u

t:
    print 'armstrong number'
    hlt

u:
    print 'not armstrong number '
    hlt

ret                 
c dw 00
co dw 00
h dw 00
r dw 00
q dw 00
define_scan_num
define_print_num_uns
