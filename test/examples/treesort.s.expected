    .data    
    .comm    u,1680
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    movl    $2,u+4
    movl    $1,u+16
    movl    $100,u+20
    movl    $1,u+424
    movl    $100,u+428
    movl    $1,u+832
    movl    $100,u+836
    jmp    f1
p59:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+1244
    movl    $21,n
    movl    u+1240,%eax
    cmpl    $100,%eax
    jg    f2
    cmpl    $1,%eax
    jge    f3
f2:    pushl    n
    call    pttrap13
f3:    decl    %eax
    shl    $2,%eax
    lea    u+840,%ebx
    addl    %ebx,%eax
    movl    u+1244,%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+1240,%eax
    cmpl    $100,%eax
    jg    f4
    cmpl    $1,%eax
    jge    f5
f4:    pushl    n
    call    pttrap13
f5:    decl    %eax
    shl    $2,%eax
    lea    u+432,%ebx
    addl    %ebx,%eax
    movl    $0,(%eax)
    incl    n
    movl    u+1240,%eax
    cmpl    $100,%eax
    jg    f6
    cmpl    $1,%eax
    jge    f7
f6:    pushl    n
    call    pttrap13
f7:    decl    %eax
    shl    $2,%eax
    lea    u+24,%ebx
    addl    %ebx,%eax
    movl    $0,(%eax)
    movl    $25,n
    cmpl    $0,u+12
    jne    f8
    incl    n
    movl    u+1240,%eax
    movl    %eax,u+12
    jmp    f9
f8:    movl    $28,n
    movl    u+12,%eax
    movl    %eax,u+1248
b10:    movl    $30,n
    movl    u+1248,%eax
    cmpl    $100,%eax
    jg    f11
    cmpl    $1,%eax
    jge    f12
f11:    pushl    n
    call    pttrap13
f12:    decl    %eax
    shl    $2,%eax
    lea    u+840,%ebx
    addl    %ebx,%eax
    movl    u+1244,%ebx
    cmpl    %ebx,(%eax)
    jle    f13
    incl    n
    movl    u+1248,%eax
    cmpl    $100,%eax
    jg    f14
    cmpl    $1,%eax
    jge    f15
f14:    pushl    n
    call    pttrap13
f15:    decl    %eax
    shl    $2,%eax
    lea    u+24,%ebx
    addl    %ebx,%eax
    cmpl    $0,(%eax)
    jne    f16
    incl    n
    movl    u+1248,%eax
    cmpl    $100,%eax
    jg    f17
    cmpl    $1,%eax
    jge    f18
f17:    pushl    n
    call    pttrap13
f18:    decl    %eax
    shl    $2,%eax
    lea    u+24,%ebx
    addl    %ebx,%eax
    movl    u+1240,%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+1240,%eax
    movl    %eax,u+1248
    jmp    f19
f16:    movl    $35,n
    movl    u+1248,%eax
    cmpl    $100,%eax
    jg    f20
    cmpl    $1,%eax
    jge    f21
f20:    pushl    n
    call    pttrap13
f21:    decl    %eax
    shl    $2,%eax
    lea    u+24,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    movl    %eax,u+1248
f19:    jmp    f22
f13:    movl    $38,n
    movl    u+1248,%eax
    cmpl    $100,%eax
    jg    f23
    cmpl    $1,%eax
    jge    f24
f23:    pushl    n
    call    pttrap13
f24:    decl    %eax
    shl    $2,%eax
    lea    u+840,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    cmpl    %eax,u+1244
    jle    f25
    incl    n
    movl    u+1248,%eax
    cmpl    $100,%eax
    jg    f26
    cmpl    $1,%eax
    jge    f27
f26:    pushl    n
    call    pttrap13
f27:    decl    %eax
    shl    $2,%eax
    lea    u+432,%ebx
    addl    %ebx,%eax
    cmpl    $0,(%eax)
    jne    f28
    incl    n
    movl    u+1248,%eax
    cmpl    $100,%eax
    jg    f29
    cmpl    $1,%eax
    jge    f30
f29:    pushl    n
    call    pttrap13
f30:    decl    %eax
    shl    $2,%eax
    lea    u+432,%ebx
    addl    %ebx,%eax
    movl    u+1240,%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+1240,%eax
    movl    %eax,u+1248
    jmp    f31
f28:    movl    $43,n
    movl    u+1248,%eax
    cmpl    $100,%eax
    jg    f32
    cmpl    $1,%eax
    jge    f33
f32:    pushl    n
    call    pttrap13
f33:    decl    %eax
    shl    $2,%eax
    lea    u+432,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    movl    %eax,u+1248
f31:f25:    movl    $45,n
f22:    movl    u+1248,%eax
    cmpl    $100,%eax
    jg    f34
    cmpl    $1,%eax
    jge    f35
f34:    pushl    n
    call    pttrap13
f35:    decl    %eax
    shl    $2,%eax
    lea    u+840,%ebx
    addl    %ebx,%eax
    movl    u+1244,%ebx
    cmpl    %ebx,(%eax)
    je    f36
    jmp    b10
f36:f9:    movl    $49,n
    incl    u+1240
    leave    
    ret    
f1:    jmp    f37
p332:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+1252
    movl    $100,u+1256
    movl    $0,u+1660
    movl    u+12,%eax
    movl    %eax,u+1664
    movb    $0,u+1668
b38:    movl    $59,n
    cmpl    $0,u+1664
    je    f39
    incl    n
    incl    u+1660
    incl    n
    movl    u+1660,%eax
    cmpl    $100,%eax
    jg    f40
    cmpl    $1,%eax
    jge    f41
f40:    pushl    n
    call    pttrap13
f41:    decl    %eax
    shl    $2,%eax
    lea    u+1260,%ebx
    addl    %ebx,%eax
    movl    u+1664,%ebx
    movl    %ebx,(%eax)
    incl    n
    movl    u+1664,%eax
    cmpl    $100,%eax
    jg    f42
    cmpl    $1,%eax
    jge    f43
f42:    pushl    n
    call    pttrap13
f43:    decl    %eax
    shl    $2,%eax
    lea    u+24,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    movl    %eax,u+1664
    jmp    f44
f39:    movl    $64,n
    cmpl    $0,u+1660
    jle    f45
    incl    n
    movl    u+1660,%eax
    cmpl    $100,%eax
    jg    f46
    cmpl    $1,%eax
    jge    f47
f46:    pushl    n
    call    pttrap13
f47:    decl    %eax
    shl    $2,%eax
    lea    u+1260,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    movl    %eax,u+1664
    incl    n
    decl    u+1660
    incl    n
    pushl    u+4
    movl    u+1664,%eax
    cmpl    $100,%eax
    jg    f48
    cmpl    $1,%eax
    jge    f49
f48:    pushl    n
    call    pttrap13
f49:    decl    %eax
    shl    $2,%eax
    lea    u+840,%ebx
    addl    %ebx,%eax
    pushl    (%eax)
    pushl    $1
    call    pttrap8
    addl    $12,%esp
    pushl    u+4
    .data    
s496:    .asciz  " "
    .text    
    lea    s496,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    movl    u+1664,%eax
    cmpl    $100,%eax
    jg    f50
    cmpl    $1,%eax
    jge    f51
f50:    pushl    n
    call    pttrap13
f51:    decl    %eax
    shl    $2,%eax
    lea    u+432,%ebx
    addl    %ebx,%eax
    movl    (%eax),%eax
    movl    %eax,u+1664
    jmp    f52
f45:    movl    $70,n
    movb    $1,u+1668
f52:f44:    cmpb    $0,u+1668
    jne    f53
    jmp    b38
f53:    movl    $74,n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    leave    
    ret    
f37:    movl    $83,n
    movl    $1,u+1676
b54:    movl    $84,n
    cmpl    $100,u+1676
    jg    f55
    incl    n
    movl    u+1676,%eax
    cmpl    $100,%eax
    jg    f56
    cmpl    $1,%eax
    jge    f57
f56:    pushl    n
    call    pttrap13
f57:    decl    %eax
    shl    $2,%eax
    lea    u+840,%ebx
    addl    %ebx,%eax
    movl    $0,(%eax)
    incl    n
    movl    u+1676,%eax
    cmpl    $100,%eax
    jg    f58
    cmpl    $1,%eax
    jge    f59
f58:    pushl    n
    call    pttrap13
f59:    decl    %eax
    shl    $2,%eax
    lea    u+24,%ebx
    addl    %ebx,%eax
    movl    $0,(%eax)
    incl    n
    movl    u+1676,%eax
    cmpl    $100,%eax
    jg    f60
    cmpl    $1,%eax
    jge    f61
f60:    pushl    n
    call    pttrap13
f61:    decl    %eax
    shl    $2,%eax
    lea    u+432,%ebx
    addl    %ebx,%eax
    movl    $0,(%eax)
    incl    n
    incl    u+1676
    jmp    b54
f55:    movl    $91,n
    movl    $1,u+1240
    incl    n
    movl    $0,u+12
    movl    $95,n
    pushl    u+4
    .data    
s662:    .asciz  "Type in some integers, please, ending with 0"
    .text    
    lea    s662,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
b62:    movl    $99,n
    pushl    u+0
    lea    u+1672,%eax
    pushl    %eax
    call    pttrap10
    addl    $8,%esp
    incl    n
    cmpl    $0,u+1672
    je    f63
    incl    n
    pushl    u+1672
    call    p59
    addl    $4,%esp
    movl    $101,n
f63:    movl    $102,n
    cmpl    $0,u+1672
    je    f64
    jmp    b62
f64:    movl    $106,n
    call    p332
    addl    $0,%esp
    movl    $106,n
    incl    n
    call    pttrap0
    leave    
    ret    
