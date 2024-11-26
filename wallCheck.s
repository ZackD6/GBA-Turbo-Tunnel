.global wallCheck

wallCheck:
    sub sp, sp, #4
    str r4, [sp, #0]

    mov r4, #1

    sub r2, r1, #15
    cmp r0, r2
    blt .false
    add r2, r2, #30
    cmp r0, r2
    bgt .false
    b .end

    .false:
        mov r4, #0
    .end: 
        mov r0, r4 
        ldr r4, [sp, #0]
        add sp, sp, #4
        mov pc, lr   
