    .data    
    .comm    u,158
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $2,%esi
    movl    $50,%edi
    pushl    %eax
    pushl    %edx
    movl    %edi,%edx
    movl    %edx,%eax
    sarl        $31,    %edx
    idivl    %esi
    movl    %eax,%esi
    popl    %edx
    popl    %eax
    movl    %esi,%eax
    movl    %eax,u+4
    movl    $1,u+8
    movl    $100,u+12
    jmp    f1
p38:    pushl   %ebp
        movl    %esp, %ebp    
    movb    8(%ebp),%al
    movb    %al,u+120
    movl    12(%ebp),%eax
    movl    %eax,u+116
    movl    $16,n
    movl    u+116,%eax
    cmpl    $100,%eax
    jg    f2
    cmpl    $1,%eax
    jge    f3
f2:    pushl    n
    call    pttrap13
f3:    decl    %eax
    lea    u+16,%ebx
    addl    %ebx,%eax
    movb    u+120,%bl
    movb    %bl,(%eax)
    leave    
    ret    
f1:    jmp    f4
p66:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+128
    movl    12(%ebp),%eax
    movl    %eax,u+124
    movl    $20,n
    movl    u+128,%eax
    movl    u+124,%ebx
    cmpl    $100,%ebx
    jg    f5
    cmpl    $1,%ebx
    jge    f6
f5:    pushl    n
    call    pttrap13
f6:    decl    %ebx
    lea    u+16,%ecx
    addl    %ecx,%ebx
    movb    (%ebx),%bl
    movb    %bl,(%eax)
    leave    
    ret    
f4:    movl    $1,u+132
b7:    movl    $25,n
    cmpl    $100,u+132
    jg    f8
    incl    n
    movl    u+132,%eax
    cmpl    $100,%eax
    jg    f9
    cmpl    $1,%eax
    jge    f10
f9:    pushl    n
    call    pttrap13
f10:    decl    %eax
    lea    u+16,%ebx
    addl    %ebx,%eax
    movb    $1,(%eax)
    incl    n
    incl    u+132
    jmp    b7
f8:    movl    $2,u+136
    movl    $2,u+140
b11:    movl    $38,n
    movl    u+4,%eax
    cmpl    %eax,u+140
    jg    f12
    movl    $41,n
    movl    u+140,%eax
    addl    u+140,%eax
    movl    %eax,u+136
b13:    movl    $42,n
    cmpl    $100,u+136
    jg    f14
    incl    n
    pushl    u+136
    movb    $0,%al
    pushl    %eax
    call    p38
    addl    $8,%esp
    movl    $43,n
    incl    n
    movl    u+140,%eax
    addl    %eax,u+136
    jmp    b13
f14:    movl    u+140,%eax
    incl    %eax
    movl    %eax,u+144
    movl    $50,n
    pushl    u+144
    lea    u+148,%eax
    pushl    %eax
    call    p66
    addl    $8,%esp
    movl    $50,n
b15:    movl    $51,n
    cmpl    $100,u+144
    jg    f16
    cmpb    $0,u+148
    jne    f17
    incl    n
    incl    u+144
    incl    n
    pushl    u+144
    lea    u+148,%eax
    pushl    %eax
    call    p66
    addl    $8,%esp
    movl    $53,n
    jmp    b15
f17:f16:    movl    $55,n
    movl    u+144,%eax
    movl    %eax,u+140
    jmp    b11
f12:    movl    $59,n
    pushl    u+0
    .data    
s320:    .asciz  "The primes up to "
    .text    
    lea    s320,%eax
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
s369:    .asciz  " are:"
    .text    
    lea    s369,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    movl    $2,u+152
b18:    movl    $61,n
    cmpl    $100,u+152
    jg    f19
    movl    $63,n
    pushl    u+152
    lea    u+156,%eax
    pushl    %eax
    call    p66
    addl    $8,%esp
    movl    $63,n
    incl    n
    cmpb    $0,u+156
    je    f20
    incl    n
    pushl    u+0
    pushl    u+152
    pushl    $4
    call    pttrap8
    addl    $12,%esp
f20:    movl    $66,n
    incl    n
    incl    u+152
    jmp    b18
f19:    movl    $69,n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    call    pttrap0
    leave    
    ret    
