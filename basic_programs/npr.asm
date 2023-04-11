;nPr

include 'emu8086.inc'
print 'Enter n:'
call scan_num 
mov ax,cx 
mov n,cx
printn
print 'Enter r:'
call scan_num 
mov sp,cx 
cmp sp,ax
jg gg
jz zz 
jmp ll

gg:
  printn
  print 'nPr is not possible.'
  hlt
  
zz:
  mov ax,1 
  printn
  print 'nPr= '
  call print_num
  hlt
ll:     
   mov bx,ax
label:
   dec bx
   mul bx
   cmp bx,1
   jne label
   
   printn 
   mov a,ax
   print 'n!= '
   call print_num 
   printn
   sub n,sp 
  
   mov ax,n
   mov bx,n
   
   laa:
     dec bx
     mul bx
     cmp bx,1
     jne laa
     je equal
     
     equal:
     printn
     print '(n-r)!= ' 
     mov b,ax
     call print_num   
     
     mov ax,a
     mov bx,b
     div bx 
     printn
     print 'nPr= '
     call print_num
     hlt
     

define_scan_num
define_print_num
define_print_num_uns 

n dw 0
a dw 0
b dw 0