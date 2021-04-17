    .data    
    .comm    u,158
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $1,u+4
    movl    $25,u+8
    jmp    f1
p26:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+120
    movl    12(%ebp),%eax
    movl    %eax,u+116
    movl    16(%ebp),%eax
    movl    %eax,u+112
    movl    $15,n
    movl    u+120,%eax
    movl    u+112,%ebx
    cmpl    $25,%ebx
    jg    f2
    cmpl    $1,%ebx
    jge    f3
f2:    pushl    n
    call    pttrap13
f3:    decl    %ebx
    shl    $2,%ebx
    lea    u+12,%ecx
    addl    %ecx,%ebx
    movl    u+116,%ecx
    cmpl    $25,%ecx
    jg    f4
    cmpl    $1,%ecx
    jge    f5
f4:    pushl    n
    call    pttrap13
f5:    decl    %ecx
    shl    $2,%ecx
    lea    u+12,%edx
    addl    %edx,%ecx
    movl    (%ebx),%ebx
    cmpl    %ebx,(%ecx)
    jle    f6
    movb    $1,%bl
    jmp    f7
f6:    movb    $0,%bl
f7:    movb    %bl,(%eax)
    leave    
    ret    
f1:    jmp    f8
p67:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+128
    movl    12(%ebp),%eax
    movl    %eax,u+124
    movl    u+124,%eax
    cmpl    $25,%eax
    jg    f9
    cmpl    $1,%eax
    jge    f10
f9:    pushl    n
    call    pttrap13
f10:    decl    %eax
    shl    $2,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    movl    %eax,u+132
    movl    $20,n
    movl    u+124,%eax
    cmpl    $25,%eax
    jg    f11
    cmpl    $1,%eax
    jge    f12
f11:    pushl    n
    call    pttrap13
f12:    decl    %eax
    shl    $2,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    movl    u+128,%ebx
    cmpl    $25,%ebx
    jg    f13
    cmpl    $1,%ebx
    jge    f14
f13:    pushl    n
    call    pttrap13
f14:    decl    %ebx
    shl    $2,%ebx
    lea    u+12,%ecx
    addl    %ecx,%ebx
    movl    (%ebx),%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+128,%eax
    cmpl    $25,%eax
    jg    f15
    cmpl    $1,%eax
    jge    f16
f15:    pushl    n
    call    pttrap13
f16:    decl    %eax
    shl    $2,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    movl    u+132,%ebx
    movl    %ebx,(%eax)
    leave    
    ret    
f8:    jmp    f17
p129:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+136
b18:    movl    $28,n
    pushl    u+0
    movl    u+136,%eax
    cmpl    $25,%eax
    jg    f19
    cmpl    $1,%eax
    jge    f20
f19:    pushl    n
    call    pttrap13
f20:    decl    %eax
    shl    $2,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    pushl    (%eax)
    pushl    $4
    call    pttrap8
    addl    $12,%esp
    incl    n
    incl    u+136
    cmpl    $25,u+136
    jg    f21
    jmp    b18
f21:    movl    $31,n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    leave    
    ret    
f17:    movl    $35,n
    movl    $61,u+12
    movl    $1,u+140
b22:    movl    $39,n
    incl    u+140
    movl    u+140,%eax
    decl    %eax
    cmpl    $25,%eax
    jg    f23
    cmpl    $1,%eax
    jge    f24
f23:    pushl    n
    call    pttrap13
f24:    decl    %eax
    shl    $2,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    imull    $1271,%eax
    movl    %eax,u+144
    movl    $41,n
    movl    u+140,%eax
    cmpl    $25,%eax
    jg    f25
    cmpl    $1,%eax
    jge    f26
f25:    pushl    n
    call    pttrap13
f26:    decl    %eax
    shl    $2,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    movl    $99,%esi
    movl    u+144,%ebx
    movl    %ebx,%edi
    pushl    %eax
    pushl    %edx
    movl    %edi,%edx
    movl    %edx,%eax
    sarl        $31,    %edx
    idivl    %esi
    movl    %edx,%esi
    popl    %edx
    popl    %eax
    movl    %esi,%ebx
    movl    %ebx,(%eax)
    cmpl    $25,u+140
    je    f27
    jmp    b22
f27:    jmp    f28
p287:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $24,u+148
b29:    movl    $48,n
    cmpl    $0,u+148
    je    f30
    movl    $1,u+152
b31:    movl    $50,n
    cmpl    $25,u+152
    je    f32
    movl    $52,n
    pushl    u+152
    movl    u+152,%eax
    incl    %eax
    pushl    %eax
    lea    u+156,%eax
    pushl    %eax
    call    p26
    addl    $12,%esp
    movl    $52,n
    incl    n
    cmpb    $0,u+156
    jne    f33
    incl    n
    pushl    u+152
    movl    u+152,%eax
    incl    %eax
    pushl    %eax
    call    p67
    addl    $8,%esp
    movl    $54,n
f33:    movl    $55,n
    incl    n
    incl    u+152
    jmp    b31
f32:    movl    $58,n
    decl    u+148
    jmp    b29
f30:    leave    
    ret    
f28:    movl    $63,n
    call    p129
    addl    $0,%esp
    movl    $63,n
    incl    n
    call    p287
    addl    $0,%esp
    movl    $64,n
    incl    n
    call    p129
    addl    $0,%esp
    movl    $65,n
    incl    n
    call    pttrap0
    leave    
    ret    
