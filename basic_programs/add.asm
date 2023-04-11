include 'emu8086.inc'
print 'enter first number :'
call scan_num
mov al,cl                 
print 'enter second number :'
call scan_num
mov bl,cl                  
print 'after adding two numbers the sum is '
add al,bl
call print_num      
ret
define_scan_num  
define_print_num_uns
define_print_num