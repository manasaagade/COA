include 'emu8086.inc'
print 'enter n :'
call scan_num
printn
mov n,cx
mov si,00
mov bx,n
mov bp,00
mov sp,00

p1:
   call scan_num
   printn
   mov arr[si],cx
   add si,2
   dec n
   cmp n,00
   jne p1
   mov si,00
   mov n,bx
   mov bx,10
   mov ax,arr[si]
   mov q,ax
   
a:
   mov ax,q
   cmp ax,00
   je b
   inc n1
   mov dx,00
   div bx
   mov q,ax
   jmp a
   
b:
   mov sp,n1
   mov ax,arr[si]
   mov q,ax
   jmp c
c:
   mov ax,q
   cmp ax,00
   je e
   mov dx,00
   div bx
   mov q,ax
   mov r,dx
   mov ax,r
   jmp d
d:
   cmp n1,1
   je p2
   mul r
   dec n1
   jmp d
p2:
   add bp,ax
   mov n1,sp
   jmp c

e:
   cmp bp,arr[si]
   je f
   jne g
g:
   add si,2
   dec n
   cmp n,0
   je h
   mov n1,0
   mov ax,arr[si]
   mov q,ax
   mov bp,00
   jmp a
f:
   mov ax,bp 
   print 'amstrong numbers : '
   call print_num
   printn
   jmp g
h:
   hlt 
   
ret
n dw 00
n1 dw 00
q dw 00
r dw 00
arr dw n dup(?)
define_scan_num
define_print_num
define_print_num_uns
   