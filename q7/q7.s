.global special

special:
    cmpq $0, %rdi
    je notSp
    movq %rdi, %rsi # num
    movq $0, %rcx # sum
    movq %rdi, %rax

loop:
    cmpq $0, %rax
    jle check

    movq $10, %r8
    cqto
    idivq %r8
    movq $1, %r9 # fact
    movq $1, %r10 # i

factLoop:
    cmpq %rdx, %r10
    jg sum
    imulq %r10, %r9
    incq %r10
    jmp factLoop

sum:
    addq %r9, %rcx
    jmp loop

check:
    cmpq %rsi, %rcx
    jne notSp
    movq $1, %rax
    ret

notSp:
    movq $0, %rax
    ret