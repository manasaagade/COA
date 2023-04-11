include 'emu8086.inc'
print 'enter first number : '
call scan_num
mov bx,cx
printn
print 'enter second number : '
call scan_num
printn
mov n,2

f:
   mov ax,bx
   div n
   mov si,dx
   mov dx,00
   cmp si,00
   je l2
   inc n
   cmp n,bx
   je l3
   jne f
   
l2:       
   cmp bx,02
   je p
   inc bx
   mov n,2
   cmp bx,cx
   je l4
   jmp f 
   
p:
   call print_num
   
l3:
   mov ax,bx 
   print ' '
   call print_num
   inc bx
   mov n,2
   cmp bx,cx
   je l4
   jmp f
   
l4:
   hlt 
    
ret   
n dw 00          
define_print_num_uns
define_print_num 
define_scan_num