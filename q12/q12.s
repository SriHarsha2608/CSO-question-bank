.global isPrime

isPrime:
    movq $1, %rcx # product
    movq $1, %r8 # i

loop:
    cmpq %rsi, %r8
    jge endLoop

    imulq $10, %rcx
    incq %r8
    jmp loop

endLoop:
    movq %rdi, %r12
    movq $0, %r8

secondLoop:
    cmpq %rsi, %r8
    jge prime

    movq %r12, %rax
    movq $10, %r9
    cqto
    idivq %r9
    
   # movq %rax, %rdi

    imulq %rcx, %rdx
    addq %rdx, %rax
    movq %rax, %r12

    cmpq %rcx, %r12
    jl notPrime

    cmpq $2, %r12
    jl notPrime

    movq $2, %r10 # j

primeLoop:
    movq %r10, %rax
    imulq %r10, %rax # j*j
    
    cmpq %r12, %rax
    jg endPrimeLoop

    movq %r12, %rax
    cqto
    idivq %r10

    cmpq $0, %rdx
    je notPrime

    incq %r10
    jmp primeLoop

endPrimeLoop:
    incq %r8
    jmp secondLoop

notPrime:
    movq $0, %rax
    ret

prime:
    movq $1, %rax
    ret

