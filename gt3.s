.global gt3

gt3:
    cmp r0, #3
    blt .add
    mov r0, #0
    b .done
.add:
    add r0, r0, #1
.done:
    mov pc, lr
