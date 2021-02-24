    .data    
    .comm    u,4124
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $1,u+4
    movl    $8,u+8
    movl    $1,u+2060
    movl    $8,u+2064
    movl    $10,n
    .data    
s48:    .asciz  "fly"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s48,%eax
    pushl    %eax
    lea    u+12,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s69:    .asciz  "spider"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s69,%eax
    pushl    %eax
    lea    u+268,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s93:    .asciz  "bird"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s93,%eax
    pushl    %eax
    lea    u+524,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s115:    .asciz  "cat"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s115,%eax
    pushl    %eax
    lea    u+780,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s136:    .asciz  "dog"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s136,%eax
    pushl    %eax
    lea    u+1036,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s157:    .asciz  "goat"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s157,%eax
    pushl    %eax
    lea    u+1292,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s179:    .asciz  "cow"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s179,%eax
    pushl    %eax
    lea    u+1548,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s200:    .asciz  "horse"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s200,%eax
    pushl    %eax
    lea    u+1804,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    $20,n
    .data    
s223:    .asciz  "I don't know why she swallowed a fly."
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s223,%eax
    pushl    %eax
    lea    u+2068,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s278:    .asciz  "That wiggled and jiggled and tickled inside her."
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s278,%eax
    pushl    %eax
    lea    u+2324,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s344:    .asciz  "How absurd, to swallow a bird."
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s344,%eax
    pushl    %eax
    lea    u+2580,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s392:    .asciz  "Imagine that, she swallowed a cat."
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s392,%eax
    pushl    %eax
    lea    u+2836,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s444:    .asciz  "What a hog, to swallow a dog."
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s444,%eax
    pushl    %eax
    lea    u+3092,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s491:    .asciz  "What a dope, to swallow a goat."
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s491,%eax
    pushl    %eax
    lea    u+3348,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s540:    .asciz  "I don't know how she swallowed that cow."
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s540,%eax
    pushl    %eax
    lea    u+3604,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s598:    .asciz  "She died of course."
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s598,%eax
    pushl    %eax
    lea    u+3860,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    $30,n
    pushl    u+0
    .data    
s634:    .asciz  "I Know an Old Lady"
    .text    
    lea    s634,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    movl    $1,u+4116
b1:    movl    $35,n
    movl    $8,%eax
    cmpl    u+4116,%eax
    jle    f2
    incl    n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    .data    
s711:    .asciz  "I know an old lady"
    .text    
    lea    s711,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    .data    
s759:    .asciz  "Who swallowed a "
    .text    
    movl    u+4116,%eax
    cmpl    $8,%eax
    jg    f3
    cmpl    $1,%eax
    jge    f4
f3:    pushl    n
    call    pttrap13
f4:    decl    %eax
    shl    $8,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    %eax
    lea    s759,%eax
    pushl    %eax
    call    pttrap103
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    movl    u+4116,%eax
    cmpl    $8,%eax
    jg    f5
    cmpl    $1,%eax
    jge    f6
f5:    pushl    n
    call    pttrap13
f6:    decl    %eax
    shl    $8,%eax
    lea    u+2068,%ebx
    addl    %ebx,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    movl    u+4116,%eax
    movl    %eax,u+4120
b7:    movl    $42,n
    movl    $2,%eax
    cmpl    u+4120,%eax
    jg    f8
    incl    n
    pushl    u+0
    .data    
s865:    .asciz  "She swallowed the "
    .text    
    movl    u+4120,%eax
    cmpl    $8,%eax
    jg    f9
    cmpl    $1,%eax
    jge    f10
f9:    pushl    n
    call    pttrap13
f10:    decl    %eax
    shl    $8,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    %eax
    lea    s865,%eax
    pushl    %eax
    call    pttrap103
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    .data    
s915:    .asciz  " to catch the "
    .text    
    movl    u+4120,%eax
    decl    %eax
    cmpl    $8,%eax
    jg    f11
    cmpl    $1,%eax
    jge    f12
f11:    pushl    n
    call    pttrap13
f12:    decl    %eax
    shl    $8,%eax
    lea    u+12,%ebx
    addl    %ebx,%eax
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    %eax
    lea    s915,%eax
    pushl    %eax
    call    pttrap103
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s949:    .asciz  ","
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s949,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap103
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    decl    u+4120
    jmp    b7
f8:    movl    $48,n
    cmpl    $1,u+4116
    jle    f13
    incl    n
    pushl    u+0
    lea    u+2068,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
f13:    movl    $50,n
    movl    $52,n
    movl    $8,%eax
    cmpl    u+4116,%eax
    jle    f14
    incl    n
    pushl    u+0
    .data    
s1051:    .asciz  "Perhaps she'll die."
    .text    
    lea    s1051,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
f14:    movl    $54,n
    movl    $56,n
    incl    u+4116
    jmp    b1
f2:    movl    $60,n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    .data    
s1128:    .asciz  "The end."
    .text    
    lea    s1128,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    .data    
s1175:    .asciz  "Thank you very much, you're too kind."
    .text    
    lea    s1175,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    .data    
s1242:    .asciz  "I'll be here until Thursday - try the veal!"
    .text    
    lea    s1242,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    incl    n
    call    pttrap0
    leave    
    ret    
