    .data    
    .comm    u,160
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $1,u+12
    movl    $100,u+16
    jmp    f1
p26:    pushl   %ebp
        movl    %esp, %ebp    
    movb    8(%ebp),%al
    movb    %al,u+124
    movl    12(%ebp),%eax
    movl    %eax,u+120
    movl    $17,n
    movl    u+120,%eax
    cmpl    $100,%eax
    jg    f2
    cmpl    $1,%eax
    jge    f3
f2:    pushl    n
    call    pttrap13
f3:    decl    %eax
    lea    u+20,%ebx
    addl    %ebx,%eax
    movb    u+124,%bl
    movb    %bl,(%eax)
    leave    
    ret    
f1:    jmp    f4
p54:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+132
    movl    12(%ebp),%eax
    movl    %eax,u+128
    movl    $21,n
    movl    u+132,%eax
    movl    u+128,%ebx
    cmpl    $100,%ebx
    jg    f5
    cmpl    $1,%ebx
    jge    f6
f5:    pushl    n
    call    pttrap13
f6:    decl    %ebx
    lea    u+20,%ecx
    addl    %ecx,%ebx
    movb    (%ebx),%bl
    movb    %bl,(%eax)
    leave    
    ret    
f4:    movl    $1,u+136
b7:    movl    $25,n
    cmpl    $100,u+136
    jg    f8
    incl    n
    movl    u+136,%eax
    cmpl    $100,%eax
    jg    f9
    cmpl    $1,%eax
    jge    f10
f9:    pushl    n
    call    pttrap13
f10:    decl    %eax
    lea    u+20,%ebx
    addl    %ebx,%eax
    movb    $1,(%eax)
    incl    n
    incl    u+136
    jmp    b7
f8:    movl    $2,u+140
    movl    $2,u+144
b11:    movl    $34,n
    cmpl    $50,u+144
    jg    f12
    movl    $37,n
    movl    u+144,%eax
    addl    u+144,%eax
    movl    %eax,u+140
b13:    movl    $38,n
    cmpl    $100,u+140
    jg    f14
    incl    n
    pushl    u+140
    movb    $0,%al
    pushl    %eax
    call    p26
    addl    $8,%esp
    movl    $39,n
    incl    n
    movl    u+144,%eax
    addl    %eax,u+140
    jmp    b13
f14:    movl    u+144,%eax
    incl    %eax
    movl    %eax,u+148
    movl    $47,n
    pushl    u+148
    lea    u+152,%eax
    pushl    %eax
    call    p54
    addl    $8,%esp
    movl    $47,n
b15:    movl    $48,n
    cmpl    $100,u+148
    jg    f16
    cmpb    $0,u+152
    jne    f17
    incl    n
    incl    u+148
    incl    n
    pushl    u+148
    lea    u+152,%eax
    pushl    %eax
    call    p54
    addl    $8,%esp
    movl    $50,n
    jmp    b15
f17:f16:    movl    $53,n
    movl    u+148,%eax
    movl    %eax,u+144
    jmp    b11
f12:    movl    $57,n
    pushl    u+0
    .data    
s307:    .asciz  "The primes up to "
    .text    
    lea    s307,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    pushl    $100
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+0
    .data    
s356:    .asciz  " are:"
    .text    
    lea    s356,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    movl    $2,u+156
b18:    movl    $62,n
    cmpl    $100,u+156
    jg    f19
    incl    n
    pushl    u+156
    lea    u+153,%eax
    pushl    %eax
    call    p54
    addl    $8,%esp
    movl    $63,n
    incl    n
    cmpb    $0,u+153
    je    f20
    incl    n
    pushl    u+0
    pushl    u+156
    pushl    $4
    call    pttrap8
    addl    $12,%esp
f20:    movl    $66,n
    incl    n
    incl    u+156
    jmp    b18
f19:    movl    $70,n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    call    pttrap0
    leave    
    ret    
