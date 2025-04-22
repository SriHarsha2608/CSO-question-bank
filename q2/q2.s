.global checkPalindrome

checkPalindrome:
    movq $0, %r10
    movq $0, %rsi

sizeLoop:
    cmpb $0, (%rdi, %rsi, 1)
    je endSizeLoop

    incq %rsi
    jmp sizeLoop

endSizeLoop:

    movq $0, %rdx # left = 0
    movq %rsi, %rcx # right = n
    decq %rcx # right = n - 1
    movq $1, %rax # flag = 1

loop:
    cmpq %rcx, %rdx
    jge end
    movb (%rdi, %rdx, 1), %r8b
    movb (%rdi, %rcx, 1), %r9b
    cmpb %r8b, %r9b
    jne notEqual
    
    incq %rdx
    decq %rcx
    jmp loop

notEqual:
    movq $0, %rax
    ret

end:
    ret
