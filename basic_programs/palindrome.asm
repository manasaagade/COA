include 'emu8086.inc'
print 'enter number : '
call scan_num
mov h,cx
mov ax,cx 
mov bx,0
mov cx,10
mov r,00
gotoxy 0,1
 
np:
      mov dx,00    ,initialization of dx
      div cx
      mov r,dx
      mov n,ax
      mov ax,bx
      mul cx
      add ax,r
      mov bx,ax
      mov ax,n
      cmp ax,0
      je p
      jne np
      
p:
   cmp h,bx 
   je palindrome:
   cmp h,bx
   jne notpalindrome:
  
palindrome:
   print 'palindrome number'
   hlt

notpalindrome:
   print 'not a palindrome number'
   hlt
  
ret

n dw 00
r dw 00
h dw 00

define_scan_num
define_print_num_uns
