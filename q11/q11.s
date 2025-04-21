.global previousGreater

previousGreater:
    movq $-1, %r8 # top
    movq $0, %r9 # i

loop:
    cmpq %rsi, %r9
    jge end

while:
    cmpq $-1, %r8
    je compareTop
    movq (%rdx, %r8, 8), %r10
    cmpq %r10, (%rdi, %r9, 8)
    jl compareTop
    decq %r8
    jmp while

compareTop:
    cmpq $-1, %r8
    jne assignValue
    movq $-1, (%rcx, %r9, 8)
    jmp assignTop

assignValue:
    movq (%rdx, %r8, 8), %r10
    movq %r10, (%rcx, %r9, 8)
    jmp assignTop

assignTop:
    movq (%rdi, %r9, 8), %r10
    incq %r8
    movq %r10, (%rdx, %r8, 8)
    incq %r9
    jmp loop

end:
    ret
