include 'emu8086.inc'

print 'Enter the size of the array: '
call scan_num
mov n,cx
mov bp,cx

printn
print 'enter the elements in gthe array: ' 
mov si,0
in: 
printn
   call scan_num    
   mov a[si],cx
   add si,02
   dec n
   cmp n,0
   jne in
   
mov si,0 
mov cx,0
mov ax,bp
mov bx,2
mul bx
mov n,ax
mov bx,a[si]
mov max,bx

   aa:
      mov ax,a[si]
      cmp ax,max
      jl grt
      jg ee
      
         ee:
         mov max,ax
         add si,02
         cmp si,n
         jne aa 
         je bb
         
         grt:
         add si,02
         cmp si,n
         jne aa
         je bb
         
        bb: 
         mov ax,max
         printn
         print 'max= '
         call print_num
         hlt
           
define_scan_num
define_print_num
define_print_num_uns
max dw 0
n dw 0
a dw n dup(?)
