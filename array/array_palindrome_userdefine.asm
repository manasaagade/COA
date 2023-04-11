include 'emu8086.inc'
print 'enter n :'
call scan_num

mov n,cx
mov bp,cx

printn
print  'enter elements in array:'
mov si,0

user:
 printn
 call scan_num
 mov a[si],cx
 add si,2
 dec n
 cmp n,0
 jne user
 
 mov si,0
 mov ax,bp
 mov bx,2
 mul bx
 mov n,ax 
 printn
 print 'palindrome numbers : '
 
 label:
   mov ax,a[si]
   mov bx,10
   mov sp,0  
   cmp ax,0
   jg label2
   
   label2:
       div bx
       mov cx,ax
       mov di,dx
       mov ax,sp
       mul bx
       add ax,di
       mov sp,ax
       mov ax,cx
       cmp ax,0
       jg label2
       je label3
       
       label3:
          cmp sp,a[si]
          je x
          jne y
          
         x: 
           
           printn
           mov ax,sp 
           call print_num 
           mov sp,0
           add si,2 
           mov ax,a[si]
           cmp si,n
           jl label2
           
           
           
          y:
           mov sp,0
           add si,2 
          
           mov ax,a[si]
           cmp si,n
           jl label2
           
          
           
       
           
           
define_scan_num
define_print_num
define_print_num_uns

n dw 0
a dw n dup(?)
              
                