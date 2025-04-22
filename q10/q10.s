.global balanced

balanced:
    movq $-1, %rcx # top
    movq $0, %r8 # i

loop:
    cmpq %rsi, %r8
    jge endLoop

    cmpb $40, (%rdi, %r8, 1)
    je addSmallBracket

    cmpb $123, (%rdi, %r8, 1)
    je addCurlyBracket

    cmpb $91, (%rdi, %r8, 1)
    je addSquareBracket 

    cmpb $41, (%rdi, %r8, 1)
    je removeSmallBracket 

    cmpb $125, (%rdi, %r8, 1)
    je removeCurlyBracket

    cmpb $93, (%rdi, %r8, 1)
    je removeSquareBracket

    incq %r8
    jmp loop

addSmallBracket:
    incq %rcx
    movb $40, (%rdx, %rcx, 1)
    incq %r8
    jmp loop

addCurlyBracket:
    incq %rcx
    movb $123, (%rdx, %rcx, 1)
    incq %r8
    jmp loop

addSquareBracket:
    incq %rcx
    movb $91, (%rdx, %rcx, 1)
    incq %r8
    jmp loop

removeSmallBracket:
    cmpq $-1, %rcx
    je notBalanced

    cmpb $40, (%rdx, %rcx, 1)
    jne notBalanced

    decq %rcx
    incq %r8
    jmp loop

removeCurlyBracket:
    cmpq $-1, %rcx
    je notBalanced

    cmpb $123, (%rdx, %rcx, 1)
    jne notBalanced

    decq %rcx
    incq %r8
    jmp loop

removeSquareBracket:
    cmpq $-1, %rcx
    je notBalanced

    cmpb $91, (%rdx, %rcx, 1)
    jne notBalanced

    decq %rcx
    incq %r8
    jmp loop

endLoop:
    cmpq $-1, %rcx
    jne notBalanced

    movq $1, %rax
    ret

notBalanced:
    movq $0, %rax
    ret
