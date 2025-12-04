; Do something I guess

START:
    LOADI   R0, #0xC0       ; Load the lower 8 bits of R0
    LUI     R0, #0x01       ; Load the upper 8 bits of R0
    LOADI   R1, #0x06       ; Load the lower 8 bits of R1
    LUI     R1, #0x80       ; Load the upper 8 bits of R1
    

    ADDI    R7, R1, #-1     ; R7 = 0x8001
    ADDI    R7, R7, #-1
    ADDI    R7, R7, #-1
    ADDI    R7, R7, #-1
    ADDI    R7, R7, #-1

    SHFT    R2, R0, R7      ; shift 448 1 to the right R2 = 224
    SHFT    R3, R2, R7      ; Shift 224 1 to the right R3 = 112
    SHFT    R4, R3, R7      ; Shift 112 1 to the right R4 = 56
    SHFT    R5, R4, R7      ; Shift 56 1 to the right  R5 = 28
    SHFT    R6, R5, R7      ; Shift 28 1 to the right  R6 = 14
    SHFT    R7, R6, R7      ; Shift 14 1 to the right  R7 = 7

DONE:
    HALT