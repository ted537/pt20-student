    .data    
    .comm    u,4336
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    movl    $2,u+4
    movl    $1,u+20
    movl    $1000,u+24
    movl    $1,u+4040
    movl    $20,u+4044
    movl    $1,u+4128
    movl    $20,u+4132
    jmp    f1
p59:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4244
    movl    12(%ebp),%eax
    movl    %eax,u+4240
    movl    $43,n
    cmpl    $17,u+4036
    jne    f2
    incl    n
    movl    $19,u+4036
    jmp    f3
f2:    movl    $46,n
    movl    $17,u+4036
f3:    movl    $48,n
    movl    u+4032,%eax
    imull    u+4036,%eax
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
    movl    %eax,u+4032
    incl    n
    movl    u+4240,%eax
    movl    u+4244,%ebx
    movl    %ebx,%esi
    movl    u+4032,%ebx
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
p138:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+4248
b5:    movl    $58,n
    movl    u+12,%eax
    cmpl    %eax,u+4248
    jg    f6
    movl    $60,n
    lea    u+4252,%eax
    pushl    %eax
    pushl    $100
    call    p59
    addl    $8,%esp
    movl    $60,n
    incl    n
    movl    $1000,%eax
    addl    %eax,u+4252
    incl    n
    movl    u+4248,%eax
    cmpl    $1000,%eax
    jg    f7
    cmpl    $1,%eax
    jge    f8
f7:    pushl    n
    call    pttrap13
f8:    decl    %eax
    shl    $2,%eax
    lea    u+28,%ebx
    addl    %ebx,%eax
    movl    u+4252,%ebx
    movl    %ebx,(%eax)
    incl    n
    incl    u+4248
    jmp    b5
f6:    leave    
    ret    
f4:    jmp    f9
p223:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4256
    movl    $74,n
    lea    u+4260,%eax
    pushl    %eax
    pushl    u+12
    call    p59
    addl    $8,%esp
    movl    $74,n
    incl    n
    movl    u+4256,%eax
    movl    u+4260,%ebx
    cmpl    $1000,%ebx
    jg    f10
    cmpl    $1,%ebx
    jge    f11
f10:    pushl    n
    call    pttrap13
f11:    decl    %ebx
    shl    $2,%ebx
    lea    u+28,%ecx
    addl    %ecx,%ebx
    movl    (%ebx),%ebx
    movl    %ebx,(%eax)
    leave    
    ret    
f9:    jmp    f12
p262:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4268
    movl    12(%ebp),%eax
    movl    %eax,u+4264
    movl    $1,u+4272
    movl    $83,n
    movl    u+4268,%eax
    movl    $0,(%eax)
b13:    movl    $84,n
    movl    u+12,%eax
    cmpl    %eax,u+4272
    jg    f14
    movl    u+4268,%eax
    cmpl    $0,(%eax)
    jne    f15
    incl    n
    incl    u+4028
    incl    n
    movl    u+4272,%eax
    cmpl    $1000,%eax
    jg    f16
    cmpl    $1,%eax
    jge    f17
f16:    pushl    n
    call    pttrap13
f17:    decl    %eax
    shl    $2,%eax
    lea    u+28,%ebx
    addl    %ebx,%eax
    movl    u+4264,%ebx
    cmpl    %ebx,(%eax)
    jne    f18
    incl    n
    movl    u+4268,%eax
    movl    u+4272,%ebx
    movl    %ebx,(%eax)
f18:    movl    $88,n
    incl    n
    incl    u+4272
    jmp    b13
f15:f14:    leave    
    ret    
f12:    jmp    f19
p373:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4280
    movl    12(%ebp),%eax
    movl    %eax,u+4276
    movl    $1,u+4284
    movl    $102,n
    movl    $0,u+4280
b20:    movl    $103,n
    cmpl    $20,u+4284
    jg    f21
    movl    u+4284,%eax
    cmpl    $20,%eax
    jg    f22
    cmpl    $1,%eax
    jge    f23
f22:    pushl    n
    call    pttrap13
f23:    decl    %eax
    shl    $2,%eax
    lea    u+4048,%ebx
    addl    %ebx,%eax
    cmpl    $0,(%eax)
    je    f24
    cmpl    $0,u+4280
    jne    f25
    incl    n
    incl    u+4028
    incl    n
    movl    u+4284,%eax
    cmpl    $20,%eax
    jg    f26
    cmpl    $1,%eax
    jge    f27
f26:    pushl    n
    call    pttrap13
f27:    decl    %eax
    shl    $2,%eax
    lea    u+4048,%ebx
    addl    %ebx,%eax
    movl    u+4276,%ebx
    cmpl    %ebx,(%eax)
    jne    f28
    incl    n
    movl    u+4284,%eax
    cmpl    $20,%eax
    jg    f29
    cmpl    $1,%eax
    jge    f30
f29:    pushl    n
    call    pttrap13
f30:    decl    %eax
    shl    $2,%eax
    lea    u+4136,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    movl    %eax,u+4280
f28:    movl    $107,n
    incl    n
    incl    u+4284
    jmp    b20
f25:f24:f21:    movl    $1,u+4288
b31:    movl    $111,n
    movl    u+12,%eax
    cmpl    %eax,u+4288
    jg    f32
    cmpl    $0,u+4280
    jne    f33
    incl    n
    incl    u+4028
    incl    n
    movl    u+4288,%eax
    cmpl    $1000,%eax
    jg    f34
    cmpl    $1,%eax
    jge    f35
f34:    pushl    n
    call    pttrap13
f35:    decl    %eax
    shl    $2,%eax
    lea    u+28,%ebx
    addl    %ebx,%eax
    movl    u+4276,%ebx
    cmpl    %ebx,(%eax)
    jne    f36
    movl    $115,n
    incl    u+4216
    incl    n
    cmpl    $20,u+4216
    jle    f37
    incl    n
    movl    $1,u+4216
f37:    movl    $118,n
    incl    n
    movl    u+4216,%eax
    cmpl    $20,%eax
    jg    f38
    cmpl    $1,%eax
    jge    f39
f38:    pushl    n
    call    pttrap13
f39:    decl    %eax
    shl    $2,%eax
    lea    u+4048,%ebx
    addl    %ebx,%eax
    movl    u+4276,%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+4216,%eax
    cmpl    $20,%eax
    jg    f40
    cmpl    $1,%eax
    jge    f41
f40:    pushl    n
    call    pttrap13
f41:    decl    %eax
    shl    $2,%eax
    lea    u+4136,%ebx
    addl    %ebx,%eax
    movl    u+4288,%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+4288,%eax
    movl    %eax,u+4280
f36:    movl    $122,n
    incl    n
    incl    u+4288
    jmp    b31
f33:f32:    leave    
    ret    
f19:    jmp    f42
p646:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4296
    movl    12(%ebp),%eax
    movl    %eax,u+4292
    movl    u+4292,%eax
    cmpl    $1000,%eax
    jg    f43
    cmpl    $1,%eax
    jge    f44
f43:    pushl    n
    call    pttrap13
f44:    decl    %eax
    shl    $2,%eax
    lea    u+28,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    movl    %eax,u+4300
    movl    $134,n
    movl    u+4292,%eax
    cmpl    $1000,%eax
    jg    f45
    cmpl    $1,%eax
    jge    f46
f45:    pushl    n
    call    pttrap13
f46:    decl    %eax
    shl    $2,%eax
    lea    u+28,%ebx
    addl    %ebx,%eax
    movl    u+4296,%ebx
    cmpl    $1000,%ebx
    jg    f47
    cmpl    $1,%ebx
    jge    f48
f47:    pushl    n
    call    pttrap13
f48:    decl    %ebx
    shl    $2,%ebx
    lea    u+28,%ecx
    addl    %ecx,%ebx
    movl    (%ebx),%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+4296,%eax
    cmpl    $1000,%eax
    jg    f49
    cmpl    $1,%eax
    jge    f50
f49:    pushl    n
    call    pttrap13
f50:    decl    %eax
    shl    $2,%eax
    lea    u+28,%ebx
    addl    %ebx,%eax
    movl    u+4300,%ebx
    movl    %ebx,(%eax)
    leave    
    ret    
f42:    jmp    f51
p708:    pushl   %ebp
        movl    %esp, %ebp    
    movl    u+12,%eax
    movl    %eax,u+4304
    movl    $1,u+4308
b52:    movl    $141,n
    cmpl    $1,u+4304
    jle    f53
    cmpl    $0,u+4308
    je    f54
    incl    n
    movl    $0,u+4308
    movl    $1,u+4312
b55:    movl    $144,n
    movl    u+4312,%eax
    cmpl    %eax,u+4304
    jle    f56
    incl    n
    incl    u+4028
    incl    n
    movl    u+4312,%eax
    cmpl    $1000,%eax
    jg    f57
    cmpl    $1,%eax
    jge    f58
f57:    pushl    n
    call    pttrap13
f58:    decl    %eax
    shl    $2,%eax
    lea    u+28,%ebx
    addl    %ebx,%eax
    movl    u+4312,%ebx
    incl    %ebx
    cmpl    $1000,%ebx
    jg    f59
    cmpl    $1,%ebx
    jge    f60
f59:    pushl    n
    call    pttrap13
f60:    decl    %ebx
    shl    $2,%ebx
    lea    u+28,%ecx
    addl    %ecx,%ebx
    movl    (%ebx),%ebx
    cmpl    %ebx,(%eax)
    jle    f61
    incl    n
    incl    u+4308
    incl    n
    pushl    u+4312
    movl    u+4312,%eax
    incl    %eax
    pushl    %eax
    call    p646
    addl    $8,%esp
    movl    $148,n
f61:    movl    $149,n
    incl    n
    incl    u+4312
    jmp    b55
f56:    movl    $152,n
    decl    u+4304
    jmp    b52
f54:f53:    leave    
    ret    
f51:    jmp    f62
p883:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4320
    movl    12(%ebp),%eax
    movl    %eax,u+4316
    movl    $1,u+4324
    movl    u+12,%eax
    movl    %eax,u+4328
b63:    movl    $163,n
    movl    u+4328,%eax
    cmpl    %eax,u+4324
    je    f64
    movl    u+4328,%eax
    addl    u+4324,%eax
    movl    $2,%esi
    movl    %eax,%edi
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
    movl    %eax,u+4332
    movl    $165,n
    incl    u+4028
    incl    n
    movl    u+4332,%eax
    cmpl    $1000,%eax
    jg    f65
    cmpl    $1,%eax
    jge    f66
f65:    pushl    n
    call    pttrap13
f66:    decl    %eax
    shl    $2,%eax
    lea    u+28,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    cmpl    %eax,u+4316
    jle    f67
    incl    n
    movl    u+4332,%eax
    incl    %eax
    movl    %eax,u+4324
    jmp    f68
f67:    movl    $169,n
    movl    u+4332,%eax
    movl    %eax,u+4328
f68:    jmp    b63
f64:    movl    $172,n
    incl    u+4028
    incl    n
    movl    u+4324,%eax
    cmpl    $1000,%eax
    jg    f69
    cmpl    $1,%eax
    jge    f70
f69:    pushl    n
    call    pttrap13
f70:    decl    %eax
    shl    $2,%eax
    lea    u+28,%ebx
    addl    %ebx,%eax
    movl    u+4316,%ebx
    cmpl    %ebx,(%eax)
    jne    f71
    incl    n
    movl    u+4324,%eax
    movl    %eax,u+4320
    jmp    f72
f71:    movl    $176,n
    movl    $0,u+4320
f72:    leave    
    ret    
f62:    movl    $186,n
    movl    $13277,u+4032
    incl    n
    movl    $17,u+4036
    movl    $190,n
    pushl    u+4
    .data    
s1079:    .asciz  "Enter N (number of elements, at most 1000, e.g. 100): "
    .text    
    lea    s1079,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+12,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    pushl    u+0
    call    pttrap4
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1178:    .asciz  "Enter M (number of lookups, e.g. 1000): "
    .text    
    lea    s1178,%eax
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
    call    pttrap4
    addl    $4,%esp
    incl    n
    pushl    u+4
    .data    
s1263:    .asciz  "Enter a prime number (e.g. 13, 19, 51, ...): "
    .text    
    lea    s1263,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+0
    lea    u+4036,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    pushl    u+0
    call    pttrap4
    addl    $4,%esp
    movl    $197,n
    call    p138
    addl    $0,%esp
    movl    $197,n
    movl    $200,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    pushl    u+4
    .data    
s1365:    .asciz  "Linear lookup"
    .text    
    lea    s1365,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movl    $0,u+4028
    movl    $203,n
    movl    $1,u+4220
b73:    movl    $204,n
    movl    u+16,%eax
    cmpl    %eax,u+4220
    jg    f74
    incl    n
    lea    u+4224,%eax
    pushl    %eax
    call    p223
    addl    $4,%esp
    movl    $205,n
    incl    n
    pushl    u+4224
    lea    u+4232,%eax
    pushl    %eax
    call    p262
    addl    $8,%esp
    movl    $206,n
    incl    n
    incl    u+4220
    jmp    b73
f74:    movl    $210,n
    movl    u+16,%eax
    movl    %eax,%esi
    movl    u+4028,%eax
    movl    %eax,%edi
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
    movl    %eax,u+4236
    incl    n
    pushl    u+4
    .data    
s1487:    .asciz  "N= "
    .text    
    lea    s1487,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+12
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s1523:    .asciz  "  Average compares per search (Cavg) = "
    .text    
    lea    s1523,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+4236
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $215,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    pushl    u+4
    .data    
s1613:    .asciz  "Linear lookup with cache"
    .text    
    lea    s1613,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    incl    n
    movl    $0,u+4028
    movl    $219,n
    movl    $0,u+4216
    incl    n
    movl    $1,u+4228
b75:    movl    $221,n
    cmpl    $20,u+4228
    jg    f76
    incl    n
    movl    u+4228,%eax
    cmpl    $20,%eax
    jg    f77
    cmpl    $1,%eax
    jge    f78
f77:    pushl    n
    call    pttrap13
f78:    decl    %eax
    shl    $2,%eax
    lea    u+4048,%ebx
    addl    %ebx,%eax
    movl    $0,(%eax)
    incl    n
    incl    u+4228
    jmp    b75
f76:    movl    $226,n
    movl    $1,u+4220
b79:    movl    $227,n
    movl    u+16,%eax
    cmpl    %eax,u+4220
    jg    f80
    incl    n
    lea    u+4224,%eax
    pushl    %eax
    call    p223
    addl    $4,%esp
    movl    $228,n
    incl    n
    pushl    u+4224
    lea    u+4232,%eax
    pushl    %eax
    call    p262
    addl    $8,%esp
    movl    $229,n
    incl    n
    incl    u+4220
    jmp    b79
f80:    movl    $233,n
    movl    u+16,%eax
    movl    %eax,%esi
    movl    u+4028,%eax
    movl    %eax,%edi
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
    movl    %eax,u+4236
    incl    n
    pushl    u+4
    .data    
s1802:    .asciz  "N= "
    .text    
    lea    s1802,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+12
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s1838:    .asciz  "  Average compares per search (Cavg) = "
    .text    
    lea    s1838,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+4236
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $238,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    pushl    u+4
    .data    
s1928:    .asciz  "Binary search"
    .text    
    lea    s1928,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $241,n
    call    p708
    addl    $0,%esp
    movl    $241,n
    movl    $243,n
    movl    $0,u+4028
    incl    n
    movl    $1,u+4220
b81:    movl    $245,n
    movl    u+16,%eax
    cmpl    %eax,u+4220
    jg    f82
    incl    n
    lea    u+4224,%eax
    pushl    %eax
    call    p223
    addl    $4,%esp
    movl    $246,n
    incl    n
    pushl    u+4224
    pushl    u+4232
    call    p883
    addl    $8,%esp
    movl    $247,n
    incl    n
    incl    u+4220
    jmp    b81
f82:    movl    $251,n
    movl    u+16,%eax
    movl    %eax,%esi
    movl    u+4028,%eax
    movl    %eax,%edi
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
    movl    %eax,u+4236
    incl    n
    pushl    u+4
    .data    
s2055:    .asciz  "N= "
    .text    
    lea    s2055,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+12
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s2091:    .asciz  "  Average compares per search (Cavg) = "
    .text    
    lea    s2091,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    pushl    u+4
    pushl    u+4236
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $254,n
    call    pttrap0
    leave    
    ret    
