.global uniqueElements

uniqueElements:
    movq $0, %r9 # i = 0
    movq %rcx, %r8
    decq %r8 # n - 1

loop:
    cmpq %r8, %r9
    jge end

    movq %r9, %r10
    incq %r10 # i + 1

    movq (%rdi, %r9, 8), %r11 # arr[i]
    cmpq %r11, (%rdi, %r10, 8)
    je incrementLoop

    movq %r11, (%rsi, %rdx, 8)
    incq %rdx
    jmp incrementLoop

incrementLoop:
    incq %r9
    jmp loop

end:
    movq (%rdi, %r8, 8), %r11
    movq %r11, (%rsi, %rdx, 8)
    incq %rdx

    movq %rdx, %rax
    ret
