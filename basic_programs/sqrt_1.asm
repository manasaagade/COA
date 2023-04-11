include 'emu8086.inc'
print 'enter a number : '
call scan_num
printn
mov ax,cx
mov bx,00

root: 
    inc bx
    mov ax,bx
    mul bx
    cmp ax,cx
    je m
    jne l
m:
   mov ax,bx
   call print_num
   hlt
l:
   cmp bx,cx
   je b
   jne root
b:
   print 'no sqrt'
   hlt
ret
define_scan_num
define_print_num_uns
define_print_num
