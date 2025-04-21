.global uniqueElements

uniqueElements:
    movq $0, %r9

intialize:
    cmpq $100000, %r9
    jge counter
    movq $0, (%rsi, %r9, 8)
    incq %r9
    jmp intialize

counter:
    movq $0, %r9

loop:
    cmpq %r8, %r9
    jge end

    movq (%rdi, %r9, 8), %r10
    cmpq $0, (%rsi, %r10, 8)
    jne notFirstTime
    movq $1, (%rsi, %r10, 8)
    movq %r10, (%rdx, %rcx, 8)
    incq %rcx
    jmp notFirstTime

notFirstTime:
    incq %r9
    jmp loop

end:
    movq %rcx, %rax
    ret 
