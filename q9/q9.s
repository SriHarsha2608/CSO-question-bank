.global binarySearch

binarySearch:
    cmpq %rdx, %rsi
    jg notFound

    movq %rdx, %r8 # high
    addq %rsi, %r8 # high + low
    shrq $1, %r8 # (high + low) / 2

    cmpq (%rdi, %r8, 8), %rcx
    je found

    jl leftHalf

    movq %r8, %rsi
    incq %rsi
    call binarySearch
    ret
found:
    movq %r8, %rax
    ret

leftHalf:
    movq %r8, %rdx
    decq %rdx
    call binarySearch
    ret
notFound:
    movq $-1, %rax
    ret
