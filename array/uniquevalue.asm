include 'emu8086.inc'

Print 'Enter no. of values in Array : '
call scan_num 
printn
mov N, cx
mov T, cx
mov si, 0 
print 'Enter values into Array(Value Range 0-100) : '
printn
label:
     cmp N, 0
     je Exit
     call scan_num 
     printn
     mov a[si], cx
     add si, 2
     dec N
     jmp label

Exit:
    print 'Array values : '
    mov cx, T
    mov si, 0
    label1:
         mov ax, a[si]
         call print_num_uns
         print ' '
         add si, 2
         loop label1
         printn 

print 'Unique values in Array : '
Start:
     mov si, i
     mov bx, 0 
     mov cx, T
     label2:
         mov ax, a[si]
         cmp ax, bx
         je increment
         add si, 2
         loop label2
         jmp label3
         
     increment: 
         inc cnt
         add si, 2
         loop label2
         
     label3:
         cmp cnt, 1
         je dup
         jmp label4
         
         dup:
            mov ax, bx
            call print_num_uns
            print ' '
            
      label4:
           mov cnt,0
           mov si, i
           inc bx 
           mov cx,T
           cmp bx,20
           jl label2
           hlt             
                 
                 
                 
cnt dw 0
N dw 0 
T dw 0
i dw 0
a dw N dup(?)  

define_scan_num
define_print_num_uns
     
