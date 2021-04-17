    .data    
    .comm    u,520
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    movl    $2,u+4
b1:    movl    $8,n
    pushl    u+4
    .data    
s29:    .asciz  "Please give me a regular French 'er' verb (end with 'arreter')"
    .text    
    lea    s29,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+0
    lea    u+8,%eax
    pushl    %eax
    call    pttrap108
    addl    $8,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $12,n
    pushl    u+4
    .data    
s145:    .asciz  "Thanks, here is the present conjugation"
    .text    
    lea    s145,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+8,%eax
    pushl    %eax
    call    pttrap105
    addl    $4,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    subl    $2,%eax
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    %eax
    pushl    $1
    lea    u+8,%eax
    pushl    %eax
    call    pttrap104
    addl    $12,%esp
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
    lea    u+264,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    $15,n
    pushl    u+4
    .data    
s234:    .asciz  "The root of this verb is '"
    .text    
    lea    s234,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    lea    u+264,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    .data    
s293:    .asciz  "'"
    .text    
    lea    s293,%eax
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
    movl    $18,n
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+8,%eax
    pushl    %eax
    call    pttrap105
    addl    $4,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    decl    %eax
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+8,%ebx
    pushl    %ebx
    call    pttrap105
    addl    $4,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%ebx
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    %ebx
    pushl    %eax
    lea    u+8,%eax
    pushl    %eax
    call    pttrap104
    addl    $12,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s343:    .asciz  "er"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s343,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f2
    movl    $20,n
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    $1
    pushl    $1
    lea    u+264,%eax
    pushl    %eax
    call    pttrap104
    addl    $12,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s367:    .asciz  "a"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s367,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    jne    f3
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    $1
    pushl    $1
    lea    u+264,%eax
    pushl    %eax
    call    pttrap104
    addl    $12,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s386:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s386,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    jne    f4
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    $1
    pushl    $1
    lea    u+264,%eax
    pushl    %eax
    call    pttrap104
    addl    $12,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s408:    .asciz  "i"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s408,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    jne    f5
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    $1
    pushl    $1
    lea    u+264,%eax
    pushl    %eax
    call    pttrap104
    addl    $12,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s428:    .asciz  "o"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s428,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    jne    f6
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    $1
    pushl    $1
    lea    u+264,%eax
    pushl    %eax
    call    pttrap104
    addl    $12,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s450:    .asciz  "u"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s450,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f7
f6:f5:f4:f3:    movl    $23,n
    pushl    u+4
    .data    
s471:    .asciz  "J'"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    lea    s471,%eax
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
s485:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s485,%ebx
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
    jmp    f8
f7:    movl    $25,n
    pushl    u+4
    .data    
s512:    .asciz  "Je "
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    lea    s512,%eax
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
s527:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s527,%ebx
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
f8:    movl    $28,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $30,n
    pushl    u+4
    .data    
s564:    .asciz  "Tu "
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    lea    s564,%eax
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
s579:    .asciz  "es"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s579,%ebx
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
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s612:    .asciz  "Il ou elle "
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    lea    s612,%eax
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
s635:    .asciz  "e"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s635,%ebx
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
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $34,n
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    call    pttrap105
    addl    $4,%esp
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
    lea    u+264,%ebx
    pushl    %ebx
    call    pttrap105
    addl    $4,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%ebx
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    %ebx
    pushl    %eax
    lea    u+264,%eax
    pushl    %eax
    call    pttrap104
    addl    $12,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s683:    .asciz  "g"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s683,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f9
    incl    n
    pushl    u+4
    .data    
s703:    .asciz  "Nous "
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    lea    s703,%eax
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
s720:    .asciz  "eons"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s720,%ebx
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
    jmp    f10
f9:    movl    $37,n
    pushl    u+4
    .data    
s750:    .asciz  "Nous "
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    lea    s750,%eax
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
s767:    .asciz  "ons"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s767,%ebx
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
f10:    movl    $40,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $42,n
    pushl    u+4
    .data    
s806:    .asciz  "Vous "
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    lea    s806,%eax
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
s823:    .asciz  "ez"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s823,%ebx
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
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s856:    .asciz  "Ils ou elles "
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    lea    s856,%eax
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
s881:    .asciz  "ent"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s881,%ebx
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
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    jmp    f11
f2:    movl    $46,n
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+8,%eax
    pushl    %eax
    call    pttrap105
    addl    $4,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    decl    %eax
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+8,%ebx
    pushl    %ebx
    call    pttrap105
    addl    $4,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%ebx
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    %ebx
    pushl    %eax
    lea    u+8,%eax
    pushl    %eax
    call    pttrap104
    addl    $12,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s936:    .asciz  "ir"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s936,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f12
    incl    n
    pushl    u+4
    .data    
s957:    .asciz  "I'm too tired to do an 'ir' verb"
    .text    
    lea    s957,%eax
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
    jmp    f13
f12:    movl    $51,n
    pushl    u+4
    .data    
s1030:    .asciz  "I don't like the looks of this verb"
    .text    
    lea    s1030,%eax
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
f13:f11:    movl    $55,n
    pushl    u+0
    call    pttrap4
    addl    $4,%esp
    .data    
s1115:    .asciz  "arreter"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s1115,%eax
    pushl    %eax
    lea    u+8,%eax
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
    jne    f14
    jmp    b1
f14:    movl    $57,n
    call    pttrap0
    leave    
    ret    
