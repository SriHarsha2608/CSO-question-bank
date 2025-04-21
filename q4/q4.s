.global sum

sum:
    movq $0, %r8 # ans = 0
    movq $0, %rcx # i = 0
    imulq %rsi, %rdx
    movq %rdx, %r9

loop:
    cmpq %r9, %rcx
    jge end
    movq (%rdi, %rcx, 8), %r10 # arr[i]
    movq %r10, %rax
    movq $5, %r11
    cqto
    idivq %r11
    cmpq $0, %rdx
    je skip
    movq %r10, %rax
    movq $3, %r11
    cqto
    idivq %r11
    cmpq $0, %rdx
    jne skip
    addq %r10, %r8 # ans += arr[i]
    jmp skip

skip:
    incq %rcx
    jmp loop

end:
    movq %r8, %rax
    ret

