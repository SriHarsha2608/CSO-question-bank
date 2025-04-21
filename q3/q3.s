.global difference

difference:
    movq $0, %rax
    movq $0, %rdx
    decq %rsi

loop:
    cmpq %rsi, %rdx
    jge end
    movq %rdx, %rcx
    incq %rcx
    movb (%rdi, %rcx, 1), %r8b # str[i+1]
    movb (%rdi, %rdx, 1), %r9b # str[i]
    cmpb %r9b, %r8b
    ja greater

    subb %r8b, %r9b
    movzbq %r9b, %r9
    addq %r9, %rax

    incq %rdx
    jmp loop

greater:
    subb %r9b, %r8b
    movzbq %r8b, %r8
    addq %r8, %rax

    incq %rdx
    jmp loop

end:
    ret
