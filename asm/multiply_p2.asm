; Load 3 into R0 and R1
; keep shifting to multiply by 2 until you reach 192
; store each subsequent value in the next register

START:
    LOADI   R0, #3          ; Load base value of 3 R0 = 3
    LOADI   R1, #1          ; Load the shift value into another register

    
    SHFT    R2, R0, R1      ; R2 = 6
    ADDI    R3, R2, #0      ; R3 = 6
    SHFT    R3, R3, R1      ; R3 = 12
    ADDI    R4, R3, #0      ; R4 = 12
    SHFT    R4, R4, R1      ; R4 = 24
    ADDI    R5, R4, #0      ; R5 = 24
    SHFT    R5, R5, R1      ; R5 = 48
    ADDI    R6, R5, #0      ; R6 = 48
    SHFT    R6, R6, R1      ; R6 = 96
    SHFT    R7, R6, R1      ; R7 = 192
    ADDI    R1, R2, #0      ; R1 = 6

DONE:
    HALT


