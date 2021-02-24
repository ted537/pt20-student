    .data    
    .comm    u,4084
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
    jmp    f1
p46:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $43,n
    movl    $13277,u+372
    incl    n
    movl    $17,u+376
    leave    
    ret    
f1:    jmp    f2
p70:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+384
    movl    12(%ebp),%eax
    movl    %eax,u+380
    movl    $48,n
    cmpl    $17,u+376
    jne    f3
    incl    n
    movl    $19,u+376
    jmp    f4
f3:    movl    $51,n
    movl    $17,u+376
f4:    movl    $53,n
    movl    u+372,%eax
    imull    u+376,%eax
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
    movl    %eax,u+372
    incl    n
    movl    u+380,%eax
    movl    u+384,%ebx
    movl    %ebx,%esi
    movl    u+372,%ebx
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
f2:    movl    $57,n
    call    p46
    addl    $0,%esp
    movl    $57,n
    movl    $1,u+388
    movl    $52,u+392
    jmp    f5
p167:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+608
    movl    $13,u+612
    movl    $1,u+668
b6:    movl    $75,n
    movl    u+668,%eax
    cmpl    $13,%eax
    jg    f7
    cmpl    $1,%eax
    jge    f8
f7:    pushl    n
    call    pttrap13
f8:    decl    %eax
    shl    $2,%eax
    lea    u+616,%ebx
    addl    %ebx,%eax
    movl    $0,(%eax)
    incl    n
    incl    u+668
    cmpl    $13,u+668
    jg    f9
    jmp    b6
f9:    movl    $1,u+672
b10:    movl    $81,n
    incl    n
    lea    u+676,%eax
    pushl    %eax
    pushl    $13
    call    p70
    addl    $8,%esp
    movl    $82,n
b11:    movl    $83,n
    movl    u+676,%eax
    cmpl    $13,%eax
    jg    f12
    cmpl    $1,%eax
    jge    f13
f12:    pushl    n
    call    pttrap13
f13:    decl    %eax
    shl    $2,%eax
    lea    u+616,%ebx
    addl    %ebx,%eax
    cmpl    $4,(%eax)
    jne    f14
    incl    n
    lea    u+676,%eax
    pushl    %eax
    pushl    $13
    call    p70
    addl    $8,%esp
    movl    $84,n
    jmp    b11
f14:    movl    $87,n
    movl    u+672,%eax
    cmpl    $52,%eax
    jg    f15
    cmpl    $1,%eax
    jge    f16
f15:    pushl    n
    call    pttrap13
f16:    decl    %eax
    shl    $2,%eax
    lea    u+396,%ebx
    addl    %ebx,%eax
    movl    u+676,%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+676,%eax
    cmpl    $13,%eax
    jg    f17
    cmpl    $1,%eax
    jge    f18
f17:    pushl    n
    call    pttrap13
f18:    decl    %eax
    shl    $2,%eax
    lea    u+616,%ebx
    addl    %ebx,%eax
    movl    u+676,%ebx
    cmpl    $13,%ebx
    jg    f19
    cmpl    $1,%ebx
    jge    f20
f19:    pushl    n
    call    pttrap13
f20:    decl    %ebx
    shl    $2,%ebx
    lea    u+616,%ecx
    addl    %ecx,%ebx
    movl    (%ebx),%ebx
    incl    %ebx
    movl    %ebx,(%eax)
    movl    $90,n
    incl    u+672
    cmpl    $52,u+672
    jg    f21
    jmp    b10
f21:    movl    $93,n
    movl    $0,u+604
    leave    
    ret    
f5:    jmp    f22
p359:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+680
    movl    $97,n
    incl    u+604
    incl    n
    movl    u+680,%eax
    movl    u+604,%ebx
    cmpl    $52,%ebx
    jg    f23
    cmpl    $1,%ebx
    jge    f24
f23:    pushl    n
    call    pttrap13
f24:    decl    %ebx
    shl    $2,%ebx
    lea    u+396,%ecx
    addl    %ecx,%ebx
    movl    (%ebx),%ebx
    movl    %ebx,(%eax)
    leave    
    ret    
f22:    jmp    f25
p397:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+684
    movl    $102,n
    movl    u+684,%eax
    movl    $52,%ebx
    subl    u+604,%ebx
    incl    %ebx
    movl    %ebx,(%eax)
    leave    
    ret    
f25:    movl    $1,u+688
    movl    $13,u+692
    jmp    f26
p437:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4028
    movl    12(%ebp),%eax
    movl    %eax,u+4024
    movl    $1,u+4032
b27:    movl    $114,n
    movl    u+4024,%eax
    cmpl    %eax,u+4032
    jg    f28
    incl    n
    pushl    u+4
    .data    
s477:    .asciz  " "
    .text    
    lea    s477,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    movl    u+4028,%eax
    movl    u+4032,%ebx
    cmpl    4(%eax),%ebx
    jg    f29
    cmpl    (%eax),%ebx
    jge    f30
f29:    pushl    n
    call    pttrap13
f30:    subl    (%eax),%ebx
    shl    $2,%ebx
    addl    $8,%eax
    addl    %eax,%ebx
    movl    (%ebx),%ebx
    cmpl    $13,%ebx
    jg    f31
    cmpl    $1,%ebx
    jge    f32
f31:    pushl    n
    call    pttrap13
f32:    decl    %ebx
    shl    $8,%ebx
    lea    u+696,%eax
    addl    %eax,%ebx
    pushl    %ebx
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    incl    u+4032
    jmp    b27
f28:    leave    
    ret    
f26:    movl    $121,n
    .data    
s546:    .asciz  "A"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s546,%eax
    pushl    %eax
    lea    u+696,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s565:    .asciz  "2"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s565,%eax
    pushl    %eax
    lea    u+952,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s584:    .asciz  "3"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s584,%eax
    pushl    %eax
    lea    u+1208,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s603:    .asciz  "4"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s603,%eax
    pushl    %eax
    lea    u+1464,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s622:    .asciz  "5"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s622,%eax
    pushl    %eax
    lea    u+1720,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s641:    .asciz  "6"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s641,%eax
    pushl    %eax
    lea    u+1976,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s660:    .asciz  "7"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s660,%eax
    pushl    %eax
    lea    u+2232,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s679:    .asciz  "8"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s679,%eax
    pushl    %eax
    lea    u+2488,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s698:    .asciz  "9"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s698,%eax
    pushl    %eax
    lea    u+2744,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s717:    .asciz  "10"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s717,%eax
    pushl    %eax
    lea    u+3000,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s737:    .asciz  "J"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s737,%eax
    pushl    %eax
    lea    u+3256,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s756:    .asciz  "Q"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s756,%eax
    pushl    %eax
    lea    u+3512,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s775:    .asciz  "K"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s775,%eax
    pushl    %eax
    lea    u+3768,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    jmp    f33
p785:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $139,n
    .data    
s796:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s796,%eax
    pushl    %eax
    lea    u+110,%eax
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
    je    f34
    incl    n
    pushl    u+4
    .data    
s816:    .asciz  "E.O. Thorp"
    .text    
    lea    s816,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    jmp    f35
f34:    movl    $141,n
    .data    
s849:    .asciz  "j"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s849,%eax
    pushl    %eax
    lea    u+110,%eax
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
s869:    .asciz  "Jim"
    .text    
    lea    s869,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    jmp    f37
f36:    movl    $144,n
    pushl    u+4
    .data    
s897:    .asciz  "Pooja"
    .text    
    lea    s897,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
f37:f35:    leave    
    ret    
f33:    jmp    f38
p924:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4036
    movl    $153,n
    movl    $0,u+88
    incl    n
    movl    $0,u+92
    incl    n
    movl    $0,u+96
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s980:    .asciz  "New shuffle."
    .text    
    lea    s980,%eax
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
s1031:    .asciz  "Choose a player (e for E.O.Thorp, j for Jim, p for Pooja, q to quit): "
    .text    
    lea    s1031,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+110,%eax
    pushl    %eax
    call    pttrap108
    addl    $8,%esp
    pushl    u+0
    call    pttrap4
    addl    $4,%esp
    movl    $162,n
    .data    
s1144:    .asciz  "q"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s1144,%eax
    pushl    %eax
    lea    u+110,%eax
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
    je    f39
    incl    n
    movl    u+4036,%eax
    movb    $0,(%eax)
    jmp    f40
f39:    movl    $165,n
    .data    
s1173:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s1173,%eax
    pushl    %eax
    lea    u+110,%eax
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
    jne    f41
    incl    n
    pushl    u+4
    .data    
s1194:    .asciz  "What does s/he stand on? "
    .text    
    lea    s1194,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+368,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    pushl    u+0
    call    pttrap4
    addl    $4,%esp
b42:    movl    $168,n
    cmpl    $0,u+368
    jle    f43
    cmpl    $20,u+368
    jle    f44
f43:    incl    n
    pushl    u+4
    .data    
s1283:    .asciz  "(1..20): "
    .text    
    lea    s1283,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+368,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    pushl    u+0
    call    pttrap4
    addl    $4,%esp
    jmp    b42
f44:f41:    movl    $172,n
    movl    $174,n
    .data    
s1342:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s1342,%eax
    pushl    %eax
    lea    u+110,%eax
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
    je    f45
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1371:    .asciz  "E.O.Thorp plays this time."
    .text    
    lea    s1371,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f46
f45:    movl    $178,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1438:    .asciz  "Next player is "
    .text    
    lea    s1438,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p785
    addl    $0,%esp
    movl    $180,n
    incl    n
    pushl    u+4
    .data    
s1481:    .asciz  "."
    .text    
    lea    s1481,%eax
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
s1512:    .asciz  "S/he stops at "
    .text    
    lea    s1512,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+368
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s1559:    .asciz  "."
    .text    
    lea    s1559,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $184,n
    movl    $15,%eax
    cmpl    u+368,%eax
    jle    f47
    incl    n
    pushl    u+4
    .data    
s1601:    .asciz  "(What a hamburger!)"
    .text    
    lea    s1601,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f48
f47:    movl    $187,n
    pushl    u+4
    .data    
s1652:    .asciz  "Good luck, "
    .text    
    lea    s1652,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p785
    addl    $0,%esp
    movl    $188,n
    incl    n
    pushl    u+4
    .data    
s1691:    .asciz  "."
    .text    
    lea    s1691,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f48:f46:    movl    $193,n
    movl    u+4036,%eax
    movb    $1,(%eax)
f40:    leave    
    ret    
f38:    jmp    f49
p1735:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4040
    movl    $204,n
    lea    u+4044,%eax
    pushl    %eax
    call    p397
    addl    $4,%esp
    movl    $204,n
    movl    $206,n
    cmpl    $10,u+4044
    jle    f50
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1780:    .asciz  "New game."
    .text    
    lea    s1780,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    incl    u+88
    incl    n
    movl    u+4040,%eax
    movb    $1,(%eax)
    jmp    f51
f50:    movl    $212,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1851:    .asciz  "Too few cards left for another game."
    .text    
    lea    s1851,%eax
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
s1917:    .asciz  "Of "
    .text    
    lea    s1917,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+88
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s1953:    .asciz  " games, "
    .text    
    lea    s1953,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p785
    addl    $0,%esp
    movl    $215,n
    incl    n
    pushl    u+4
    .data    
s1989:    .asciz  " won "
    .text    
    lea    s1989,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+92
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s2027:    .asciz  ", dealer won "
    .text    
    lea    s2027,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+96
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s2073:    .asciz  "."
    .text    
    lea    s2073,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $218,n
    movl    u+92,%eax
    cmpl    %eax,u+96
    jle    f52
    incl    n
    pushl    u+4
    .data    
s2116:    .asciz  "House cleans up on "
    .text    
    lea    s2116,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p785
    addl    $0,%esp
    movl    $220,n
    incl    n
    pushl    u+4
    .data    
s2163:    .asciz  " this time."
    .text    
    lea    s2163,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f53
f52:    movl    $222,n
    movl    u+96,%eax
    cmpl    %eax,u+92
    jle    f54
    incl    n
    .data    
s2216:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s2216,%eax
    pushl    %eax
    lea    u+110,%eax
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
    je    f55
    incl    n
    pushl    u+4
    .data    
s2236:    .asciz  "E.O.Thorp does it again."
    .text    
    lea    s2236,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f56
f55:    movl    $226,n
    call    p785
    addl    $0,%esp
    movl    $226,n
    incl    n
    pushl    u+4
    .data    
s2297:    .asciz  " must have doctored the shuffle."
    .text    
    lea    s2297,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f56:    jmp    f57
f54:    movl    $230,n
    pushl    u+4
    .data    
s2364:    .asciz  "Even shuffle."
    .text    
    lea    s2364,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f57:f53:    movl    $233,n
    movl    u+4040,%eax
    movb    $0,(%eax)
f51:    leave    
    ret    
f49:    jmp    f58
p2418:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $240,n
    incl    u+80
    incl    n
    movl    u+80,%eax
    cmpl    $7,%eax
    jg    f59
    cmpl    $1,%eax
    jge    f60
f59:    pushl    n
    call    pttrap13
f60:    decl    %eax
    shl    $2,%eax
    lea    u+16,%ebx
    addl    %ebx,%eax
    pushl    %eax
    call    p359
    addl    $4,%esp
    movl    $241,n
    leave    
    ret    
f58:    jmp    f61
p2452:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $247,n
    incl    u+84
    incl    n
    movl    u+84,%eax
    cmpl    $7,%eax
    jg    f62
    cmpl    $1,%eax
    jge    f63
f62:    pushl    n
    call    pttrap13
f63:    decl    %eax
    shl    $2,%eax
    lea    u+52,%ebx
    addl    %ebx,%eax
    pushl    %eax
    call    p359
    addl    $4,%esp
    movl    $248,n
    leave    
    ret    
f61:    jmp    f64
p2486:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $256,n
    movb    $0,u+109
    incl    n
    movb    $0,u+108
    incl    n
    movl    $0,u+80
    incl    n
    movl    $0,u+84
    movl    $261,n
    call    p2418
    addl    $0,%esp
    movl    $261,n
    incl    n
    call    p2452
    addl    $0,%esp
    movl    $262,n
    incl    n
    call    p2418
    addl    $0,%esp
    movl    $263,n
    incl    n
    call    p2452
    addl    $0,%esp
    movl    $264,n
    movl    $266,n
    pushl    u+4
    .data    
s2551:    .asciz  "The initial deal gives "
    .text    
    lea    s2551,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    call    p785
    addl    $0,%esp
    movl    $267,n
    incl    n
    pushl    u+4
    .data    
s2602:    .asciz  " :"
    .text    
    lea    s2602,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+80
    lea    u+8,%eax
    pushl    %eax
    call    p437
    addl    $8,%esp
    movl    $269,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s2647:    .asciz  "  and the dealer :"
    .text    
    lea    s2647,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+84
    lea    u+44,%eax
    pushl    %eax
    call    p437
    addl    $8,%esp
    movl    $271,n
    incl    n
    pushl    u+4
    .data    
s2701:    .asciz  "."
    .text    
    lea    s2701,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    leave    
    ret    
f64:    jmp    f65
p2727:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4060
    movl    12(%ebp),%eax
    movl    %eax,u+4056
    movl    16(%ebp),%eax
    movl    %eax,u+4052
    movl    20(%ebp),%eax
    movl    %eax,u+4048
    movl    $281,n
    movl    u+4060,%eax
    movl    $0,(%eax)
    movl    $0,u+4064
    movl    $1,u+4068
b66:    movl    $285,n
    movl    u+4048,%eax
    cmpl    %eax,u+4068
    jg    f67
    movl    $287,n
    movl    u+4052,%eax
    movl    u+4068,%ebx
    cmpl    4(%eax),%ebx
    jg    f68
    cmpl    (%eax),%ebx
    jge    f69
f68:    pushl    n
    call    pttrap13
f69:    subl    (%eax),%ebx
    shl    $2,%ebx
    addl    $8,%eax
    addl    %eax,%ebx
    jmp    f70
v2795:    movl    $287,n
    movl    $290,n
    movl    u+4060,%eax
    movl    u+4060,%ebx
    movl    u+4052,%ecx
    movl    u+4068,%edx
    cmpl    4(%ecx),%edx
    jg    f71
    cmpl    (%ecx),%edx
    jge    f72
f71:    pushl    n
    call    pttrap13
f72:    subl    (%ecx),%edx
    shl    $2,%edx
    addl    $8,%ecx
    addl    %ecx,%edx
    movl    (%edx),%edx
    addl    (%ebx),%edx
    movl    %edx,(%eax)
    jmp    m2785
v2820:    movl    $291,n
    movl    $293,n
    movl    u+4060,%eax
    movl    u+4060,%ebx
    movl    $11,%ecx
    addl    (%ebx),%ecx
    movl    %ecx,(%eax)
    incl    n
    incl    u+4064
    jmp    m2785
a2785:b73:    movl    $295,n
    movl    $297,n
    movl    u+4060,%eax
    movl    u+4060,%ebx
    movl    $10,%ecx
    addl    (%ebx),%ecx
    movl    %ecx,(%eax)
    jmp    m2785
f70:    movl    (%ebx),%ebx
    decl    %ebx
    cmpl    $9,%ebx
    ja    b73
    shl    $2,%ebx
    movl    c2785(%ebx),%ebx
    jmp    *%ebx
    .data    
c2785:    .long    v2820
    .long    v2795
    .long    v2795
    .long    v2795
    .long    v2795
    .long    v2795
    .long    v2795
    .long    v2795
    .long    v2795
    .long    v2795
    .text    
m2785:    movl    $298,n
    movl    $300,n
    incl    u+4068
    jmp    b66
f67:b74:    movl    $303,n
    movl    u+4060,%eax
    cmpl    $21,(%eax)
    jle    f75
    cmpl    $0,u+4064
    jle    f76
    incl    n
    movl    u+4060,%eax
    movl    u+4060,%ebx
    movl    (%ebx),%ebx
    subl    $10,%ebx
    movl    %ebx,(%eax)
    incl    n
    decl    u+4064
    jmp    b74
f76:f75:    movl    $308,n
    movl    u+4056,%eax
    cmpl    $0,u+4064
    jle    f77
    movb    $1,%bl
    jmp    f78
f77:    movb    $0,%bl
f78:    movb    %bl,(%eax)
    leave    
    ret    
f65:    jmp    f79
p2967:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $319,n
    pushl    u+84
    lea    u+44,%eax
    pushl    %eax
    lea    u+4072,%eax
    pushl    %eax
    lea    u+100,%eax
    pushl    %eax
    call    p2727
    addl    $16,%esp
    movl    $319,n
    movl    $321,n
    cmpl    $21,u+100
    jle    f80
    incl    n
    pushl    u+4
    .data    
s3012:    .asciz  "Dealer goes bust."
    .text    
    lea    s3012,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movb    $1,u+108
    incl    n
    incl    u+92
    jmp    f81
f80:    movl    $325,n
    cmpl    $21,u+100
    jne    f82
    incl    n
    pushl    u+4
    .data    
s3092:    .asciz  "Dealer calls blackjack."
    .text    
    lea    s3092,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movb    $1,u+108
    incl    n
    incl    u+96
    jmp    f83
f82:    movl    $330,n
    movl    $17,%eax
    cmpl    u+100,%eax
    jle    f84
    incl    n
    call    p2452
    addl    $0,%esp
    movl    $331,n
    jmp    f85
f84:    movl    $333,n
    movb    $1,u+108
f85:f83:f81:    movl    $337,n
    cmpb    $0,u+108
    je    f86
    incl    n
    pushl    u+4
    .data    
s3208:    .asciz  "Dealer stands with "
    .text    
    lea    s3208,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+100
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s3260:    .asciz  "."
    .text    
    lea    s3260,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $340,n
    movl    u+104,%eax
    cmpl    %eax,u+100
    jle    f87
    incl    n
    pushl    u+4
    .data    
s3303:    .asciz  "House wins."
    .text    
    lea    s3303,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    incl    u+96
    jmp    f88
f87:    movl    $343,n
    movl    u+100,%eax
    cmpl    %eax,u+104
    jle    f89
    incl    n
    call    p785
    addl    $0,%esp
    movl    $344,n
    incl    n
    pushl    u+4
    .data    
s3375:    .asciz  " wins."
    .text    
    lea    s3375,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    incl    u+92
    jmp    f90
f89:    movl    $348,n
    pushl    u+4
    .data    
s3425:    .asciz  "Tie game."
    .text    
    lea    s3425,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f90:f88:    jmp    f91
f86:    movl    $352,n
    pushl    u+4
    .data    
s3472:    .asciz  "Dealer takes a card and now has "
    .text    
    lea    s3472,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+84
    lea    u+44,%eax
    pushl    %eax
    call    p437
    addl    $8,%esp
    movl    $353,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f91:    leave    
    ret    
f79:    jmp    f92
p3545:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $363,n
    movl    u+104,%eax
    cmpl    %eax,u+368
    jle    f93
    incl    n
    call    p2418
    addl    $0,%esp
    movl    $364,n
    jmp    f94
f93:    movl    $366,n
    movb    $1,u+109
f94:    leave    
    ret    
f92:    jmp    f95
p3583:    pushl   %ebp
        movl    %esp, %ebp    
    movb    8(%ebp),%al
    movb    %al,u+4073
    movl    $376,n
    movl    u+52,%eax
    movl    %eax,u+4076
    movl    $378,n
    cmpb    $0,u+4073
    je    f96
    movl    $380,n
    cmpl    $8,u+4076
    jle    f97
    movl    $382,n
    cmpl    $18,u+104
    jle    f98
    movb    $1,%al
    jmp    f99
f98:    movb    $0,%al
f99:    movb    %al,u+109
    jmp    f100
f97:    movl    $385,n
    cmpl    $17,u+104
    jle    f101
    movb    $1,%al
    jmp    f102
f101:    movb    $0,%al
f102:    movb    %al,u+109
f100:    jmp    f103
f96:    movl    $389,n
    cmpl    $1,u+4076
    jle    f104
    movl    $4,%eax
    cmpl    u+4076,%eax
    jle    f105
    movl    $391,n
    cmpl    $12,u+104
    jle    f106
    movb    $1,%al
    jmp    f107
f106:    movb    $0,%al
f107:    movb    %al,u+109
    jmp    f108
f105:f104:    movl    $392,n
    cmpl    $3,u+4076
    jle    f109
    movl    $7,%eax
    cmpl    u+4076,%eax
    jle    f110
    movl    $394,n
    cmpl    $11,u+104
    jle    f111
    movb    $1,%al
    jmp    f112
f111:    movb    $0,%al
f112:    movb    %al,u+109
    jmp    f113
f110:f109:    movl    $397,n
    cmpl    $16,u+104
    jle    f114
    movb    $1,%al
    jmp    f115
f114:    movb    $0,%al
f115:    movb    %al,u+109
f113:f108:f103:    movl    $401,n
    cmpb    $0,u+109
    jne    f116
    incl    n
    call    p2418
    addl    $0,%esp
    movl    $402,n
f116:    movl    $403,n
    leave    
    ret    
f95:    jmp    f117
p3759:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $414,n
    pushl    u+80
    lea    u+8,%eax
    pushl    %eax
    lea    u+4080,%eax
    pushl    %eax
    lea    u+104,%eax
    pushl    %eax
    call    p2727
    addl    $16,%esp
    movl    $414,n
    movl    $416,n
    cmpl    $21,u+104
    jne    f118
    incl    n
    call    p785
    addl    $0,%esp
    movl    $417,n
    incl    n
    pushl    u+4
    .data    
s3809:    .asciz  " calls blackjack."
    .text    
    lea    s3809,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movb    $1,u+109
    incl    n
    movb    $1,u+108
    incl    n
    incl    u+92
    jmp    f119
f118:    movl    $422,n
    cmpl    $21,u+104
    jle    f120
    incl    n
    call    p785
    addl    $0,%esp
    movl    $423,n
    incl    n
    pushl    u+4
    .data    
s3902:    .asciz  " goes bust."
    .text    
    lea    s3902,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movb    $1,u+109
    incl    n
    movb    $1,u+108
    incl    n
    incl    u+96
    jmp    f121
f120:    movl    $429,n
    .data    
s3971:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s3971,%eax
    pushl    %eax
    lea    u+110,%eax
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
    je    f122
    incl    n
    movb    u+4080,%al
    pushl    %eax
    call    p3583
    addl    $4,%esp
    movl    $430,n
    jmp    f123
f122:    movl    $432,n
    call    p3545
    addl    $0,%esp
    movl    $432,n
f123:f121:f119:    movl    $436,n
    cmpb    $0,u+109
    je    f124
    incl    n
    call    p785
    addl    $0,%esp
    movl    $437,n
    incl    n
    pushl    u+4
    .data    
s4027:    .asciz  " stands with "
    .text    
    lea    s4027,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+104
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s4073:    .asciz  "."
    .text    
    lea    s4073,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f125
f124:    movl    $440,n
    call    p785
    addl    $0,%esp
    movl    $440,n
    incl    n
    pushl    u+4
    .data    
s4111:    .asciz  " takes a card and now has "
    .text    
    lea    s4111,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+80
    lea    u+8,%eax
    pushl    %eax
    call    p437
    addl    $8,%esp
    movl    $442,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
f125:    leave    
    ret    
f117:    movl    $451,n
    pushl    u+4
    .data    
s4186:    .asciz  "This program simulates the game of blackjack."
    .text    
    lea    s4186,%eax
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
s4270:    .asciz  "The dealer plays the compulsory strategy of standing on 17 or better."
    .text    
    lea    s4270,%eax
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
s4378:    .asciz  "The player plays either"
    .text    
    lea    s4378,%eax
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
s4431:    .asciz  "  [1] The standard naive strategy of standing on n or better, or"
    .text    
    lea    s4431,%eax
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
s4525:    .asciz  "  [2] A simplified version of the strategy described by  E.O.Thorp"
    .text    
    lea    s4525,%eax
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
s4621:    .asciz  "      in his book \"Beat the Dealer\" (Vintage Books, 1966); pp. 20-21."
    .text    
    lea    s4621,%eax
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
s4729:    .asciz  "Input :"
    .text    
    lea    s4729,%eax
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
s4766:    .asciz  "  For each shuffle, a player name (character string of <= 20 characters),"
    .text    
    lea    s4766,%eax
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
s4869:    .asciz  "  and if (the player name specified is not \"E.O.Thorp\", the count [n]"
    .text    
    lea    s4869,%eax
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
s4968:    .asciz  "  on which the player stands."
    .text    
    lea    s4968,%eax
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
s5036:    .asciz  "If the player name specified is \"E.O.Thorp\", the player strategy used"
    .text    
    lea    s5036,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    .data    
s5124:    .asciz  " will be Thorp's."
    .text    
    lea    s5124,%eax
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
s5173:    .asciz  "Otherwise, the player will use the standard stop on count > n strategy."
    .text    
    lea    s5173,%eax
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
s5283:    .asciz  "The program will simulate one complete shuffle of play for each player."
    .text    
    lea    s5283,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $474,n
    lea    u+4081,%eax
    pushl    %eax
    call    p924
    addl    $4,%esp
    movl    $474,n
b126:    movl    $476,n
    cmpb    $0,u+4081
    je    f127
    incl    n
    call    p167
    addl    $0,%esp
    movl    $477,n
    incl    n
    lea    u+4081,%eax
    pushl    %eax
    call    p1735
    addl    $4,%esp
    movl    $478,n
b128:    movl    $480,n
    cmpb    $0,u+4081
    je    f129
    incl    n
    call    p2486
    addl    $0,%esp
    movl    $481,n
b130:    movl    $483,n
    cmpb    $0,u+109
    jne    f131
    incl    n
    call    p3759
    addl    $0,%esp
    movl    $484,n
    jmp    b130
f131:b132:    movl    $487,n
    cmpb    $0,u+108
    jne    f133
    incl    n
    call    p2967
    addl    $0,%esp
    movl    $488,n
    jmp    b132
f133:    movl    $491,n
    lea    u+4081,%eax
    pushl    %eax
    call    p1735
    addl    $4,%esp
    movl    $491,n
    jmp    b128
f129:    movl    $494,n
    lea    u+4081,%eax
    pushl    %eax
    call    p924
    addl    $4,%esp
    movl    $494,n
    jmp    b126
f127:    movl    $496,n
    call    pttrap0
    leave    
    ret    
