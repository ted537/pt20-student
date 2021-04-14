    .data    
    .comm    u,800
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    movl    $2,u+4
    movl    $8,n
    pushl    u+4
    .data    
s28:    .asciz  "enter box width and height: "
    .text    
    lea    s28,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+8,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    pushl    u+0
    lea    u+12,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    movl    $13,n
    pushl    u+4
    .data    
s105:    .asciz  "enter number of boxes across and down: "
    .text    
    lea    s105,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+16,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    pushl    u+0
    lea    u+20,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    movl    $17,n
    incl    u+8
    incl    u+12
    .data    
s210:    .asciz  ""
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s210,%eax
    pushl    %eax
    lea    u+24,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    .data    
s223:    .asciz  ""
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s223,%eax
    pushl    %eax
    lea    u+280,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    .data    
s236:    .asciz  ""
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s236,%eax
    pushl    %eax
    lea    u+536,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    $0,u+792
b1:    movl    $22,n
    movl    u+8,%eax
    imull    u+16,%eax
    cmpl    %eax,u+792
    jg    f2
    incl    n
    movl    u+8,%eax
    movl    %eax,%esi
    movl    u+792,%eax
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
    cmpl    $0,%eax
    jne    f3
    incl    n
    .data    
s296:    .asciz  " "
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s296,%eax
    pushl    %eax
    lea    u+24,%eax
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
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    movl    %eax,%ebx
    pushl    %ebx
    lea    u+24,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s315:    .asciz  "|"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s315,%eax
    pushl    %eax
    lea    u+280,%eax
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
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    movl    %eax,%ebx
    pushl    %ebx
    lea    u+280,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s334:    .asciz  "|"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s334,%eax
    pushl    %eax
    lea    u+536,%eax
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
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    movl    %eax,%ebx
    pushl    %ebx
    lea    u+536,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    jmp    f4
f3:    movl    $28,n
    .data    
s355:    .asciz  "_"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s355,%eax
    pushl    %eax
    lea    u+24,%eax
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
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    movl    %eax,%ebx
    pushl    %ebx
    lea    u+24,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s374:    .asciz  " "
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s374,%eax
    pushl    %eax
    lea    u+280,%eax
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
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    movl    %eax,%ebx
    pushl    %ebx
    lea    u+280,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    .data    
s393:    .asciz  "_"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s393,%eax
    pushl    %eax
    lea    u+536,%eax
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
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    movl    %eax,%ebx
    pushl    %ebx
    lea    u+536,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
f4:    movl    $32,n
    incl    u+792
    jmp    b1
f2:    movl    $36,n
    pushl    u+4
    lea    u+24,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movl    $1,u+792
b5:    movl    $38,n
    movl    u+20,%eax
    cmpl    %eax,u+792
    jg    f6
    movl    $1,u+796
b7:    movl    $40,n
    movl    u+12,%eax
    decl    %eax
    cmpl    u+796,%eax
    jle    f8
    incl    n
    pushl    u+4
    lea    u+280,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    incl    u+796
    jmp    b7
f8:    movl    $45,n
    pushl    u+4
    lea    u+536,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    incl    u+792
    jmp    b5
f6:    movl    $48,n
    call    pttrap0
    leave    
    ret    
