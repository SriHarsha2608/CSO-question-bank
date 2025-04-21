.global sequence

sequence:
    movq (%rdi), %r10 # min
    movq (%rdi), %rcx # max
    movq $1, %r8

loop:
    cmpq %rsi, %r8
    jge compare
    movq (%rdi, %r8, 8), %r9 # arr[i]
    cmpq %r10, %r9
    jl assignMin
    cmpq %rcx, %r9
    jg assignMax
    incq %r8
    jmp loop

assignMin:
    movq %r9, %r10
    incq %r8
    jmp loop

assignMax:
    movq %r9, %rcx
    incq %r8
    jmp loop

compare:
    subq %r10, %rcx
    incq %rcx
    cmpq %rcx, %rsi
    jne notSeq
    movq $0, %r8

intialize:
    cmpq %rsi, %r8
    jge setCounter
    movq $0, (%rdx, %r8, 8)
    incq %r8
    jmp intialize

setCounter:
    movq $0, %r8

checkFrequency:
    cmpq %rsi, %r8
    jge correctSeq
    movq (%rdi, %r8, 8), %r9
    subq %r10, %r9
    incq (%rdx, %r9, 8)
    movq (%rdx, %r9, 8), %r11
    cmpq $1, %r11
    jg notSeq
    incq %r8
    jmp checkFrequency

notSeq:
    movq $0, %rax
    ret

correctSeq:
    movq $1, %rax
    ret


