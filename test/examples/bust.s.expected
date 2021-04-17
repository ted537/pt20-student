    .data    
    .comm    u,4120
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    movl    $2,u+4
    movl    $1,u+8
    movl    $7,u+12
    movl    $1,u+44
    movl    $7,u+48
    movl    $1,u+80
    movl    $7,u+84
    movl    $1,u+408
    movl    $52,u+412
    movl    $1,u+628
    movl    $13,u+632
    jmp    f1
p85:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+3976
    movl    12(%ebp),%eax
    movl    %eax,u+3972
    movl    $48,n
    cmpl    $17,u+3968
    jne    f2
    incl    n
    movl    $19,u+3968
    jmp    f3
f2:    movl    $51,n
    movl    $17,u+3968
f3:    movl    $53,n
    movl    u+3964,%eax
    imull    u+3968,%eax
    movl    $10000,%esi
    movl    %eax,%edi
    pushl    %eax
    pushl    %edx
    movl    %edi,%edx
    movl    %edx,%eax
    sarl        $31,    %edx
    idivl    %esi
    movl    %edx,%esi
    popl    %edx
    popl    %eax
    movl    %esi,%eax
    movl    %eax,u+3964
    incl    n
    movl    u+3972,%eax
    movl    u+3976,%ebx
    movl    %ebx,%esi
    movl    u+3964,%ebx
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
    incl    %ebx
    movl    %ebx,(%eax)
    leave    
    ret    
f1:    jmp    f4
p164:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+3980
    movl    $13,u+3984
    movl    $1,u+4040
b5:    movl    $67,n
    movl    u+4040,%eax
    cmpl    $13,%eax
    jg    f6
    cmpl    $1,%eax
    jge    f7
f6:    pushl    n
    call    pttrap13
f7:    decl    %eax
    shl    $2,%eax
    lea    u+3988,%ebx
    addl    %ebx,%eax
    movl    $0,(%eax)
    incl    n
    incl    u+4040
    cmpl    $13,u+4040
    jg    f8
    jmp    b5
f8:    movl    $1,u+4044
b9:    movl    $73,n
    incl    n
    lea    u+4048,%eax
    pushl    %eax
    pushl    $13
    call    p85
    addl    $8,%esp
    movl    $74,n
b10:    movl    $75,n
    movl    u+4048,%eax
    cmpl    $13,%eax
    jg    f11
    cmpl    $1,%eax
    jge    f12
f11:    pushl    n
    call    pttrap13
f12:    decl    %eax
    shl    $2,%eax
    lea    u+3988,%ebx
    addl    %ebx,%eax
    cmpl    $4,(%eax)
    jne    f13
    incl    n
    lea    u+4048,%eax
    pushl    %eax
    pushl    $13
    call    p85
    addl    $8,%esp
    movl    $76,n
    jmp    b10
f13:    movl    $79,n
    movl    u+4044,%eax
    cmpl    $52,%eax
    jg    f14
    cmpl    $1,%eax
    jge    f15
f14:    pushl    n
    call    pttrap13
f15:    decl    %eax
    shl    $2,%eax
    lea    u+416,%ebx
    addl    %ebx,%eax
    movl    u+4048,%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+4048,%eax
    cmpl    $13,%eax
    jg    f16
    cmpl    $1,%eax
    jge    f17
f16:    pushl    n
    call    pttrap13
f17:    decl    %eax
    shl    $2,%eax
    lea    u+3988,%ebx
    addl    %ebx,%eax
    movl    u+4048,%ebx
    cmpl    $13,%ebx
    jg    f18
    cmpl    $1,%ebx
    jge    f19
f18:    pushl    n
    call    pttrap13
f19:    decl    %ebx
    shl    $2,%ebx
    lea    u+3988,%ecx
    addl    %ecx,%ebx
    movl    (%ebx),%ebx
    incl    %ebx
    movl    %ebx,(%eax)
    movl    $82,n
    incl    u+4044
    cmpl    $52,u+4044
    jg    f20
    jmp    b9
f20:    movl    $85,n
    movl    $0,u+624
    leave    
    ret    
f4:    jmp    f21
p356:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4052
    movl    $89,n
    incl    u+624
    incl    n
    movl    u+4052,%eax
    movl    u+624,%ebx
    cmpl    $52,%ebx
    jg    f22
    cmpl    $1,%ebx
    jge    f23
f22:    pushl    n
    call    pttrap13
f23:    decl    %ebx
    shl    $2,%ebx
    lea    u+416,%ecx
    addl    %ecx,%ebx
    movl    (%ebx),%ebx
    movl    %ebx,(%eax)
    leave    
    ret    
f21:    jmp    f24
p394:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4056
    movl    $94,n
    movl    u+4056,%eax
    movl    $52,%ebx
    subl    u+624,%ebx
    incl    %ebx
    movl    %ebx,(%eax)
    leave    
    ret    
f24:    jmp    f25
p421:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4064
    movl    12(%ebp),%eax
    movl    %eax,u+4060
    movl    $1,u+4068
b26:    movl    $101,n
    movl    u+4060,%eax
    cmpl    %eax,u+4068
    jg    f27
    incl    n
    pushl    u+4
    .data    
s461:    .asciz  " "
    .text    
    lea    s461,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    movl    u+4064,%eax
    movl    u+4068,%ebx
    cmpl    4(%eax),%ebx
    jg    f28
    cmpl    (%eax),%ebx
    jge    f29
f28:    pushl    n
    call    pttrap13
f29:    subl    (%eax),%ebx
    shl    $2,%ebx
    addl    $8,%eax
    addl    %eax,%ebx
    movl    (%ebx),%ebx
    cmpl    $13,%ebx
    jg    f30
    cmpl    $1,%ebx
    jge    f31
f30:    pushl    n
    call    pttrap13
f31:    decl    %ebx
    shl    $8,%ebx
    lea    u+636,%eax
    addl    %eax,%ebx
    pushl    %ebx
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    movl    u+4064,%eax
    movl    u+4068,%ebx
    cmpl    4(%eax),%ebx
    jg    f32
    cmpl    (%eax),%ebx
    jge    f33
f32:    pushl    n
    call    pttrap13
f33:    subl    (%eax),%ebx
    shl    $2,%ebx
    addl    $8,%eax
    addl    %eax,%ebx
    cmpl    $10,(%ebx)
    jne    f34
    incl    n
    pushl    u+4
    .data    
s527:    .asciz  "0"
    .text    
    lea    s527,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
f34:    movl    $105,n
    incl    n
    incl    u+4068
    jmp    b26
f27:    leave    
    ret    
f25:    jmp    f35
p565:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $113,n
    .data    
s576:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s576,%eax
    pushl    %eax
    lea    u+146,%eax
    pushl    %eax
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f36
    incl    n
    pushl    u+4
    .data    
s596:    .asciz  "E.O. Thorp"
    .text    
    lea    s596,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    jmp    f37
f36:    movl    $115,n
    .data    
s629:    .asciz  "j"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s629,%eax
    pushl    %eax
    lea    u+146,%eax
    pushl    %eax
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f38
    incl    n
    pushl    u+4
    .data    
s649:    .asciz  "Jim"
    .text    
    lea    s649,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    jmp    f39
f38:    movl    $118,n
    pushl    u+4
    .data    
s677:    .asciz  "Pooja"
    .text    
    lea    s677,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
f39:f37:    leave    
    ret    
f35:    jmp    f40
p704:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4072
    movl    $128,n
    movl    $0,u+124
    incl    n
    movl    $0,u+128
    incl    n
    movl    $0,u+132
    movl    $132,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s760:    .asciz  "New shuffle."
    .text    
    lea    s760,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s811:    .asciz  "Choose a player (e for E.O.Thorp, j for Jim, p for Pooja, q to quit): "
    .text    
    lea    s811,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+146,%eax
    pushl    %eax
    call    pttrap108
    addl    $8,%esp
    pushl    u+0
    call    pttrap4
    addl    $4,%esp
    movl    $138,n
    .data    
s924:    .asciz  "q"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s924,%eax
    pushl    %eax
    lea    u+146,%eax
    pushl    %eax
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f41
    incl    n
    movl    u+4072,%eax
    movb    $0,(%eax)
    jmp    f42
f41:    movl    $141,n
    .data    
s953:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s953,%eax
    pushl    %eax
    lea    u+146,%eax
    pushl    %eax
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    jne    f43
    incl    n
    pushl    u+4
    .data    
s974:    .asciz  "What does s/he stand on? "
    .text    
    lea    s974,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+404,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    pushl    u+0
    call    pttrap4
    addl    $4,%esp
b44:    movl    $144,n
    cmpl    $0,u+404
    jle    f45
    cmpl    $21,u+404
    jle    f46
f45:    incl    n
    pushl    u+4
    .data    
s1063:    .asciz  "(1..20): "
    .text    
    lea    s1063,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+404,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    pushl    u+0
    call    pttrap4
    addl    $4,%esp
    jmp    b44
f46:f43:    movl    $148,n
    movl    $150,n
    .data    
s1122:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s1122,%eax
    pushl    %eax
    lea    u+146,%eax
    pushl    %eax
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f47
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1151:    .asciz  "E.O.Thorp plays this time."
    .text    
    lea    s1151,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f48
f47:    movl    $154,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1218:    .asciz  "Next player is "
    .text    
    lea    s1218,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p565
    addl    $0,%esp
    movl    $156,n
    incl    n
    pushl    u+4
    .data    
s1261:    .asciz  "."
    .text    
    lea    s1261,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1292:    .asciz  "S/he stops at "
    .text    
    lea    s1292,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+404
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s1339:    .asciz  "."
    .text    
    lea    s1339,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $160,n
    movl    $15,%eax
    cmpl    u+404,%eax
    jle    f49
    incl    n
    pushl    u+4
    .data    
s1381:    .asciz  "(What a hamburger!)"
    .text    
    lea    s1381,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f50
f49:    movl    $163,n
    pushl    u+4
    .data    
s1432:    .asciz  "Good luck, "
    .text    
    lea    s1432,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p565
    addl    $0,%esp
    movl    $164,n
    incl    n
    pushl    u+4
    .data    
s1471:    .asciz  "."
    .text    
    lea    s1471,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f50:f48:    movl    $169,n
    movl    u+4072,%eax
    movb    $1,(%eax)
f42:    leave    
    ret    
f40:    jmp    f51
p1515:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4076
    movl    $180,n
    lea    u+4080,%eax
    pushl    %eax
    call    p394
    addl    $4,%esp
    movl    $180,n
    movl    $182,n
    cmpl    $10,u+4080
    jle    f52
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1560:    .asciz  "New game."
    .text    
    lea    s1560,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    incl    u+124
    incl    n
    movl    u+4076,%eax
    movb    $1,(%eax)
    jmp    f53
f52:    movl    $188,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1631:    .asciz  "Too few cards left for another game."
    .text    
    lea    s1631,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1697:    .asciz  "Of "
    .text    
    lea    s1697,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+124
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s1733:    .asciz  " games, "
    .text    
    lea    s1733,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p565
    addl    $0,%esp
    movl    $191,n
    incl    n
    pushl    u+4
    .data    
s1769:    .asciz  " won "
    .text    
    lea    s1769,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+128
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s1807:    .asciz  ", dealer won "
    .text    
    lea    s1807,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+132
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s1853:    .asciz  "."
    .text    
    lea    s1853,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $194,n
    movl    u+128,%eax
    cmpl    %eax,u+132
    jle    f54
    incl    n
    pushl    u+4
    .data    
s1896:    .asciz  "House cleans up on "
    .text    
    lea    s1896,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p565
    addl    $0,%esp
    movl    $196,n
    incl    n
    pushl    u+4
    .data    
s1943:    .asciz  " this time."
    .text    
    lea    s1943,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f55
f54:    movl    $198,n
    movl    u+132,%eax
    cmpl    %eax,u+128
    jle    f56
    incl    n
    .data    
s1996:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s1996,%eax
    pushl    %eax
    lea    u+146,%eax
    pushl    %eax
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f57
    incl    n
    pushl    u+4
    .data    
s2016:    .asciz  "E.O.Thorp does it again."
    .text    
    lea    s2016,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f58
f57:    movl    $202,n
    call    p565
    addl    $0,%esp
    movl    $202,n
    incl    n
    pushl    u+4
    .data    
s2077:    .asciz  " must have doctored the shuffle."
    .text    
    lea    s2077,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f58:    jmp    f59
f56:    movl    $206,n
    pushl    u+4
    .data    
s2144:    .asciz  "Even shuffle."
    .text    
    lea    s2144,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f59:f55:    movl    $209,n
    movl    u+4076,%eax
    movb    $0,(%eax)
f53:    leave    
    ret    
f51:    jmp    f60
p2198:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $216,n
    incl    u+116
    incl    n
    movl    u+116,%eax
    cmpl    $7,%eax
    jg    f61
    cmpl    $1,%eax
    jge    f62
f61:    pushl    n
    call    pttrap13
f62:    decl    %eax
    shl    $2,%eax
    lea    u+52,%ebx
    addl    %ebx,%eax
    pushl    %eax
    call    p356
    addl    $4,%esp
    movl    $217,n
    leave    
    ret    
f60:    jmp    f63
p2232:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $224,n
    incl    u+120
    incl    n
    movl    u+120,%eax
    cmpl    $7,%eax
    jg    f64
    cmpl    $1,%eax
    jge    f65
f64:    pushl    n
    call    pttrap13
f65:    decl    %eax
    shl    $2,%eax
    lea    u+88,%ebx
    addl    %ebx,%eax
    pushl    %eax
    call    p356
    addl    $4,%esp
    movl    $225,n
    leave    
    ret    
f63:    jmp    f66
p2266:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $233,n
    movb    $0,u+145
    incl    n
    movb    $0,u+144
    incl    n
    movl    $0,u+116
    incl    n
    movl    $0,u+120
    movl    $238,n
    call    p2198
    addl    $0,%esp
    movl    $238,n
    incl    n
    call    p2232
    addl    $0,%esp
    movl    $239,n
    incl    n
    call    p2198
    addl    $0,%esp
    movl    $240,n
    incl    n
    call    p2232
    addl    $0,%esp
    movl    $241,n
    movl    $243,n
    pushl    u+4
    .data    
s2331:    .asciz  "The initial deal gives "
    .text    
    lea    s2331,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p565
    addl    $0,%esp
    movl    $244,n
    incl    n
    pushl    u+4
    .data    
s2382:    .asciz  " :"
    .text    
    lea    s2382,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+116
    lea    u+44,%eax
    pushl    %eax
    call    p421
    addl    $8,%esp
    movl    $246,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s2427:    .asciz  "  and the dealer :"
    .text    
    lea    s2427,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+120
    lea    u+80,%eax
    pushl    %eax
    call    p421
    addl    $8,%esp
    movl    $248,n
    incl    n
    pushl    u+4
    .data    
s2481:    .asciz  "."
    .text    
    lea    s2481,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    leave    
    ret    
f66:    jmp    f67
p2507:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4096
    movl    12(%ebp),%eax
    movl    %eax,u+4092
    movl    16(%ebp),%eax
    movl    %eax,u+4088
    movl    20(%ebp),%eax
    movl    %eax,u+4084
    movl    $258,n
    movl    u+4096,%eax
    movl    $0,(%eax)
    movl    $0,u+4100
    movl    $1,u+4104
b68:    movl    $262,n
    movl    u+4084,%eax
    cmpl    %eax,u+4104
    jg    f69
    incl    n
    movl    u+4088,%eax
    movl    u+4104,%ebx
    cmpl    4(%eax),%ebx
    jg    f70
    cmpl    (%eax),%ebx
    jge    f71
f70:    pushl    n
    call    pttrap13
f71:    subl    (%eax),%ebx
    shl    $2,%ebx
    addl    $8,%eax
    addl    %eax,%ebx
    jmp    f72
v2575:    movl    $263,n
    movl    $265,n
    movl    u+4096,%eax
    movl    u+4096,%ebx
    movl    u+4088,%ecx
    movl    u+4104,%edx
    cmpl    4(%ecx),%edx
    jg    f73
    cmpl    (%ecx),%edx
    jge    f74
f73:    pushl    n
    call    pttrap13
f74:    subl    (%ecx),%edx
    shl    $2,%edx
    addl    $8,%ecx
    addl    %ecx,%edx
    movl    (%edx),%edx
    addl    (%ebx),%edx
    movl    %edx,(%eax)
    jmp    m2565
v2600:    movl    $266,n
    movl    $268,n
    movl    u+4096,%eax
    movl    u+4096,%ebx
    movl    $11,%ecx
    addl    (%ebx),%ecx
    movl    %ecx,(%eax)
    incl    n
    incl    u+4100
    jmp    m2565
a2565:b75:    movl    $270,n
    movl    $272,n
    movl    u+4096,%eax
    movl    u+4096,%ebx
    movl    $10,%ecx
    addl    (%ebx),%ecx
    movl    %ecx,(%eax)
    jmp    m2565
f72:    movl    (%ebx),%ebx
    decl    %ebx
    cmpl    $9,%ebx
    ja    b75
    shl    $2,%ebx
    movl    c2565(%ebx),%ebx
    jmp    *%ebx
    .data    
c2565:    .long    v2600
    .long    v2575
    .long    v2575
    .long    v2575
    .long    v2575
    .long    v2575
    .long    v2575
    .long    v2575
    .long    v2575
    .long    v2575
    .text    
m2565:    movl    $273,n
    movl    $275,n
    incl    u+4104
    jmp    b68
f69:b76:    movl    $278,n
    movl    u+4096,%eax
    cmpl    $21,(%eax)
    jle    f77
    cmpl    $0,u+4100
    je    f78
    incl    n
    movl    u+4096,%eax
    movl    u+4096,%ebx
    movl    (%ebx),%ebx
    subl    $10,%ebx
    movl    %ebx,(%eax)
    incl    n
    decl    u+4100
    jmp    b76
f78:f77:    movl    $283,n
    movl    u+4092,%eax
    cmpl    $0,u+4100
    jle    f79
    movb    $1,%bl
    jmp    f80
f79:    movb    $0,%bl
f80:    movb    %bl,(%eax)
    leave    
    ret    
f67:    jmp    f81
p2747:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $295,n
    pushl    u+120
    lea    u+80,%eax
    pushl    %eax
    lea    u+4108,%eax
    pushl    %eax
    lea    u+136,%eax
    pushl    %eax
    call    p2507
    addl    $16,%esp
    movl    $295,n
    movl    $297,n
    cmpl    $21,u+136
    jle    f82
    incl    n
    pushl    u+4
    .data    
s2792:    .asciz  "Dealer goes bust."
    .text    
    lea    s2792,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movb    $1,u+144
    incl    n
    incl    u+128
    jmp    f83
f82:    movl    $301,n
    cmpl    $21,u+136
    jne    f84
    incl    n
    pushl    u+4
    .data    
s2872:    .asciz  "Dealer calls blackjack."
    .text    
    lea    s2872,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movb    $1,u+144
    incl    n
    incl    u+132
    jmp    f85
f84:    movl    $306,n
    movl    $17,%eax
    cmpl    u+136,%eax
    jle    f86
    incl    n
    call    p2232
    addl    $0,%esp
    movl    $307,n
    jmp    f87
f86:    movl    $309,n
    movb    $1,u+144
f87:    movl    $312,n
    cmpb    $0,u+144
    je    f88
    incl    n
    pushl    u+4
    .data    
s2984:    .asciz  "Dealer stands with "
    .text    
    lea    s2984,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+136
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s3036:    .asciz  "."
    .text    
    lea    s3036,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $315,n
    movl    u+140,%eax
    cmpl    %eax,u+136
    jle    f89
    incl    n
    pushl    u+4
    .data    
s3079:    .asciz  "House wins."
    .text    
    lea    s3079,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    incl    u+132
    jmp    f90
f89:    movl    $318,n
    movl    u+136,%eax
    cmpl    %eax,u+140
    jle    f91
    incl    n
    call    p565
    addl    $0,%esp
    movl    $319,n
    incl    n
    pushl    u+4
    .data    
s3151:    .asciz  " wins."
    .text    
    lea    s3151,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    incl    u+128
    jmp    f92
f91:    movl    $323,n
    pushl    u+4
    .data    
s3201:    .asciz  "Tie game."
    .text    
    lea    s3201,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f92:f90:    jmp    f93
f88:    movl    $327,n
    pushl    u+4
    .data    
s3248:    .asciz  "Dealer takes a card and now has "
    .text    
    lea    s3248,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+120
    lea    u+80,%eax
    pushl    %eax
    call    p421
    addl    $8,%esp
    movl    $328,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f93:f85:f83:    leave    
    ret    
f81:    jmp    f94
p3325:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $336,n
    movl    u+140,%eax
    cmpl    %eax,u+404
    jle    f95
    incl    n
    call    p2198
    addl    $0,%esp
    movl    $337,n
    jmp    f96
f95:    movl    $339,n
    movb    $1,u+145
f96:    leave    
    ret    
f94:    jmp    f97
p3363:    pushl   %ebp
        movl    %esp, %ebp    
    movb    8(%ebp),%al
    movb    %al,u+4109
    movl    $349,n
    movl    u+88,%eax
    movl    %eax,u+4112
    movl    $351,n
    cmpb    $0,u+4109
    je    f98
    movl    $353,n
    cmpl    $8,u+4112
    jle    f99
    movl    $355,n
    cmpl    $18,u+140
    jle    f100
    movb    $1,%al
    jmp    f101
f100:    movb    $0,%al
f101:    movb    %al,u+145
    jmp    f102
f99:    movl    $358,n
    cmpl    $17,u+140
    jle    f103
    movb    $1,%al
    jmp    f104
f103:    movb    $0,%al
f104:    movb    %al,u+145
f102:    jmp    f105
f98:    movl    $362,n
    cmpl    $1,u+4112
    jle    f106
    movl    $4,%eax
    cmpl    u+4112,%eax
    jle    f107
    movl    $364,n
    cmpl    $12,u+140
    jle    f108
    movb    $1,%al
    jmp    f109
f108:    movb    $0,%al
f109:    movb    %al,u+145
    jmp    f110
f107:f106:    movl    $365,n
    cmpl    $3,u+4112
    jle    f111
    movl    $7,%eax
    cmpl    u+4112,%eax
    jle    f112
    movl    $367,n
    cmpl    $11,u+140
    jle    f113
    movb    $1,%al
    jmp    f114
f113:    movb    $0,%al
f114:    movb    %al,u+145
    jmp    f115
f112:f111:    movl    $370,n
    cmpl    $16,u+140
    jle    f116
    movb    $1,%al
    jmp    f117
f116:    movb    $0,%al
f117:    movb    %al,u+145
f115:f110:f105:    movl    $374,n
    cmpb    $0,u+145
    jne    f118
    incl    n
    call    p2198
    addl    $0,%esp
    movl    $375,n
f118:    movl    $376,n
    leave    
    ret    
f97:    jmp    f119
p3539:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $387,n
    pushl    u+116
    lea    u+44,%eax
    pushl    %eax
    lea    u+4116,%eax
    pushl    %eax
    lea    u+140,%eax
    pushl    %eax
    call    p2507
    addl    $16,%esp
    movl    $387,n
    movl    $389,n
    cmpl    $21,u+140
    jne    f120
    incl    n
    call    p565
    addl    $0,%esp
    movl    $390,n
    incl    n
    pushl    u+4
    .data    
s3589:    .asciz  " calls blackjack."
    .text    
    lea    s3589,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movb    $1,u+145
    incl    n
    movb    $1,u+144
    incl    n
    incl    u+128
    jmp    f121
f120:    movl    $395,n
    cmpl    $21,u+140
    jle    f122
    incl    n
    call    p565
    addl    $0,%esp
    movl    $396,n
    incl    n
    pushl    u+4
    .data    
s3682:    .asciz  " goes bust."
    .text    
    lea    s3682,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movb    $1,u+145
    incl    n
    movb    $1,u+144
    incl    n
    incl    u+132
    jmp    f123
f122:    movl    $402,n
    .data    
s3751:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s3751,%eax
    pushl    %eax
    lea    u+146,%eax
    pushl    %eax
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f124
    incl    n
    movb    u+4116,%al
    pushl    %eax
    call    p3363
    addl    $4,%esp
    movl    $403,n
    jmp    f125
f124:    movl    $405,n
    call    p3325
    addl    $0,%esp
    movl    $405,n
f125:f123:f121:    movl    $409,n
    cmpb    $0,u+145
    je    f126
    incl    n
    call    p565
    addl    $0,%esp
    movl    $410,n
    incl    n
    pushl    u+4
    .data    
s3807:    .asciz  " stands with "
    .text    
    lea    s3807,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+140
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s3853:    .asciz  "."
    .text    
    lea    s3853,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f127
f126:    movl    $413,n
    call    p565
    addl    $0,%esp
    movl    $413,n
    incl    n
    pushl    u+4
    .data    
s3891:    .asciz  " takes a card and now has "
    .text    
    lea    s3891,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+116
    lea    u+44,%eax
    pushl    %eax
    call    p421
    addl    $8,%esp
    movl    $415,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f127:    leave    
    ret    
f119:    movl    $424,n
    pushl    u+4
    .data    
s3966:    .asciz  "This program simulates the game of blackjack."
    .text    
    lea    s3966,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4050:    .asciz  "The dealer plays the compulsory strategy of standing on 17 or better."
    .text    
    lea    s4050,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4158:    .asciz  "The player plays either"
    .text    
    lea    s4158,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4211:    .asciz  "  [1] The standard naive strategy of standing on n or better, or"
    .text    
    lea    s4211,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4305:    .asciz  "  [2] A simplified version of the strategy described by  E.O.Thorp"
    .text    
    lea    s4305,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4401:    .asciz  "      in his book \"Beat the Dealer\" (Vintage Books, 1966) pp. 20-21."
    .text    
    lea    s4401,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4508:    .asciz  "Input :"
    .text    
    lea    s4508,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4545:    .asciz  "  For each shuffle, a player name (character string of <= 20 characters),"
    .text    
    lea    s4545,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4648:    .asciz  "  and if (the player name specified is not \"E.O.Thorp\", the count [n]"
    .text    
    lea    s4648,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4747:    .asciz  "  on which the player stands."
    .text    
    lea    s4747,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4815:    .asciz  "If the player name specified is \"E.O.Thorp\", the player strategy used"
    .text    
    lea    s4815,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    .data    
s4903:    .asciz  " will be Thorp\"s."
    .text    
    lea    s4903,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s4952:    .asciz  "Otherwise, the player will use the standard stop on count > n strategy."
    .text    
    lea    s4952,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s5062:    .asciz  "The program will simulate one complete shuffle of play for each player."
    .text    
    lea    s5062,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $445,n
    movl    $13277,u+3964
    incl    n
    movl    $17,u+3968
    movl    $449,n
    .data    
s5180:    .asciz  "A"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5180,%eax
    pushl    %eax
    lea    u+636,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5199:    .asciz  "2"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5199,%eax
    pushl    %eax
    lea    u+892,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5218:    .asciz  "3"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5218,%eax
    pushl    %eax
    lea    u+1148,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5237:    .asciz  "4"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5237,%eax
    pushl    %eax
    lea    u+1404,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5256:    .asciz  "5"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5256,%eax
    pushl    %eax
    lea    u+1660,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5275:    .asciz  "6"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5275,%eax
    pushl    %eax
    lea    u+1916,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5294:    .asciz  "7"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5294,%eax
    pushl    %eax
    lea    u+2172,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5313:    .asciz  "8"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5313,%eax
    pushl    %eax
    lea    u+2428,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5332:    .asciz  "9"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5332,%eax
    pushl    %eax
    lea    u+2684,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5351:    .asciz  "1"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5351,%eax
    pushl    %eax
    lea    u+2940,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5370:    .asciz  "J"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5370,%eax
    pushl    %eax
    lea    u+3196,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5389:    .asciz  "Q"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5389,%eax
    pushl    %eax
    lea    u+3452,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s5408:    .asciz  "K"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s5408,%eax
    pushl    %eax
    lea    u+3708,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    $466,n
    lea    u+4117,%eax
    pushl    %eax
    call    p704
    addl    $4,%esp
    movl    $466,n
b128:    movl    $468,n
    cmpb    $0,u+4117
    je    f129
    incl    n
    call    p164
    addl    $0,%esp
    movl    $469,n
    incl    n
    lea    u+4117,%eax
    pushl    %eax
    call    p1515
    addl    $4,%esp
    movl    $470,n
b130:    movl    $472,n
    cmpb    $0,u+4117
    je    f131
    incl    n
    call    p2266
    addl    $0,%esp
    movl    $473,n
b132:    movl    $475,n
    cmpb    $0,u+145
    jne    f133
    incl    n
    call    p3539
    addl    $0,%esp
    movl    $476,n
    jmp    b132
f133:b134:    movl    $479,n
    cmpb    $0,u+144
    jne    f135
    incl    n
    call    p2747
    addl    $0,%esp
    movl    $480,n
    jmp    b134
f135:    movl    $483,n
    lea    u+4117,%eax
    pushl    %eax
    call    p1515
    addl    $4,%esp
    movl    $483,n
    jmp    b130
f131:    movl    $486,n
    lea    u+4117,%eax
    pushl    %eax
    call    p704
    addl    $4,%esp
    movl    $486,n
    jmp    b128
f129:    movl    $488,n
    call    pttrap0
    leave    
    ret    
