.global function

function:
    movq $1, %r9
    
loop:
    cmpq %rsi, %r9 
    jg end

    movq %r9, %r8
    decq %r8
    movq %r9, %rax
    movq $14, %rcx
    cqto
    idivq %rcx
    cmpq $0, %rdx
    jne notDivisibleBy14

    movq $-3, (%rdi, %r8, 8)
    incq %r9
    jmp loop

notDivisibleBy14:
    movq %r9, %rax
    movq $7, %rcx
    cqto
    idivq %rcx
    cmpq $0, %rdx
    jne notDivisibleBy7


    movq $-2, (%rdi, %r8, 8)
    incq %r9
    jmp loop

notDivisibleBy7:
    movq %r9, %rax
    movq $2, %rcx
    cqto
    idivq %rcx
    cmpq $0, %rdx
    jne notDivisibleBy2

    movq $-1, (%rdi, %r8, 8)
    incq %r9
    jmp loop

notDivisibleBy2:
    movq %r9, (%rdi, %r8, 8)
    incq %r9
    jmp loop

end:
    ret

