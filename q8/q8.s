.global waveForm

waveForm:
    movq $0, %rcx # i = 0;

loop:
    cmpq %rsi, %rcx
    jge endLoop
    movq %rcx, %rdx # min = i
    movq %rcx, %r8 # j = i
    incq %r8 # j = i + 1

innerLoop:
    cmpq %rsi, %r8
    jge endInnerloop
    movq (%rdi, %r8, 8), %r12
    movq (%rdi, %rdx, 8), %r13
    cmpq %r12, %r13
    jg assignMin
    incq %r8
    jmp innerLoop

assignMin:
    movq %r8, %rdx
    incq %r8
    jmp innerLoop

endInnerloop:
    cmpq %rdx, %rcx
    je incrementI
    movq (%rdi, %rcx, 8), %r9
    movq (%rdi, %rdx, 8), %r12
    movq %r12, (%rdi, %rcx, 8)
    movq %r9, (%rdi, %rdx, 8)
    jmp incrementI

incrementI:
    incq %rcx
    jmp loop

endLoop:
    movq $0, %rcx # i
    movq %rsi, %r8
    decq %r8 # n - 1

secondLoop:
    cmpq %r8, %rcx
    jge end
    movq %rcx, %rax
    movq $2, %r9
    cqto
    idivq %r9
    cmpq $0, %rdx
    jne incrementCounter
    movq %rcx, %r11
    incq %r11
    movq (%rdi, %rcx, 8), %r10
    movq (%rdi, %r11, 8), %r12
    movq %r12, (%rdi, %rcx, 8)
    movq %r10, (%rdi, %r11, 8)
    jmp incrementCounter

incrementCounter:
    incq %rcx
    jmp secondLoop

end:
    ret


