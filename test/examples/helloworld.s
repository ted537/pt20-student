    .data    
    .comm    u,4
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $3,n
    pushl    u+0
    .data    
s21:    .asciz  "Hello world"
    .text    
    lea    s21,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    call    pttrap0
    leave    
    ret    
