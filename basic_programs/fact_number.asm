include 'emu8086.inc'
print 'enter a number:'
call scan_num
mov ax,cx
mov n,cx
mov bx,01

fact:
   cmp bx,n
   je a
   jne b

a:
   gotoxy 0,1
   call print_num
   hlt

b:
   mul bx
   inc bx
   jmp fact
    
ret 
g dw 00
n dw 00
q dw 00
r dw 00    
define_print_num
define_scan_num
define_print_num_uns