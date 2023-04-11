include 'emu8086.inc'

print 'enter n value'
call scan_num

mov n,cx
mov bp,cx
printn

print 'enter elements'
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
  print 'perfect numbers:' 
  
  label:
       mov ax,a[si]
       mov di,a[si]
       mov bx,01 
       mov sp,0
       cmp bx,0
       jg label2
       
       label2: 
          mov dx,0
          div bx
          cmp dx,0
          je label3
          jne label4
          
          label3:
            add sp,bx
            mov ax,di
            inc bx
            cmp bx,ax
            jl label2
            je label5
            
            label4:
               mov ax,di
               inc bx
               cmp bx,ax
               jl label2
               je label5
               
              label5:
                  cmp sp,a[si]
                  je x
                  jne y
                  
                  
                  x:
                   printn
                   mov ax,sp
                   call print_num
                   
                   add si,2
                   mov ax,a[si]
                   mov di,ax
                   mov sp,0
                   mov bx,1
                   cmp si,n
                   jl label2
                   
                 y:
                    
                   add si,2
                   mov ax,a[si]
                   mov di,ax
                   mov sp,0
                   mov bx,1
                   cmp si,n
                   jl label2
          
            
define_scan_num
define_print_num
define_print_num_uns

n dw 0
a dw n dup(?)
  
  