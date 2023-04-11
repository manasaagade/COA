include 'emu8086.inc'
print 'enter first number :'
call scan_num
mov al,cl                 
shl al,1
                
jnc positive
jc negative

negative: 
    print '                '
    print 'negative'     
    hlt

positive:
    print '                '
    print 'positive'
         
ret
define_scan_num  
define_print_num_uns
define_print_num