    .data    
    .comm    u,164
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
    movl    %eax,u+124
    movl    12(%ebp),%eax
    movl    %eax,u+120
    movl    16(%ebp),%eax
    movl    %eax,u+116
    movl    $12,n
    movl    u+116,%eax
    movl    %eax,u+112
    incl    n
    movl    u+124,%eax
    movl    u+116,%ebx
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
    movl    u+120,%ecx
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
p76:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+132
    movl    12(%ebp),%eax
    movl    %eax,u+128
    movl    $18,n
    movl    u+132,%eax
    movl    %eax,u+112
    incl    n
    movl    u+128,%eax
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
    movl    %eax,u+136
    incl    n
    movl    u+128,%eax
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
    movl    u+132,%ebx
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
    movl    u+132,%eax
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
    movl    u+136,%ebx
    movl    %ebx,(%eax)
    leave    
    ret    
f8:    jmp    f17
p146:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+140
b18:    movl    $27,n
    pushl    u+0
    movl    u+140,%eax
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
    incl    u+140
    cmpl    $25,u+140
    jg    f21
    jmp    b18
f21:    movl    $30,n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    leave    
    ret    
f17:    jmp    f22
p220:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $24,u+144
b23:    movl    $35,n
    cmpl    $0,u+144
    jle    f24
    movl    $1,u+148
b25:    movl    $37,n
    movl    $25,%eax
    cmpl    u+148,%eax
    jle    f26
    movl    $39,n
    pushl    u+148
    movl    u+148,%eax
    incl    %eax
    pushl    %eax
    lea    u+152,%eax
    pushl    %eax
    call    p26
    addl    $12,%esp
    movl    $39,n
    incl    n
    cmpb    $0,u+152
    jne    f27
    incl    n
    pushl    u+148
    movl    u+148,%eax
    incl    %eax
    pushl    %eax
    call    p76
    addl    $8,%esp
    movl    $41,n
f27:    movl    $42,n
    incl    n
    incl    u+148
    jmp    b25
f26:    movl    $45,n
    decl    u+144
    jmp    b23
f24:    leave    
    ret    
f22:    movl    $50,n
    movl    $61,u+12
    movl    $1,u+156
b28:    movl    $54,n
    incl    u+156
    movl    u+156,%eax
    decl    %eax
    cmpl    $25,%eax
    jg    f29
    cmpl    $1,%eax
    jge    f30
f29:    pushl    n
    call    pttrap13
f30:    decl    %eax
    shl    $2,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    imull    $1271,%eax
    movl    %eax,u+160
    movl    $56,n
    movl    u+156,%eax
    cmpl    $25,%eax
    jg    f31
    cmpl    $1,%eax
    jge    f32
f31:    pushl    n
    call    pttrap13
f32:    decl    %eax
    shl    $2,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    movl    $99,%esi
    movl    u+160,%ebx
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
    cmpl    $25,u+156
    je    f33
    jmp    b28
f33:    movl    $59,n
    movl    $0,u+112
    movl    $62,n
    call    p146
    addl    $0,%esp
    movl    $62,n
    incl    n
    call    p220
    addl    $0,%esp
    movl    $63,n
    incl    n
    call    p146
    addl    $0,%esp
    movl    $64,n
    incl    n
    call    pttrap0
    leave    
    ret    
