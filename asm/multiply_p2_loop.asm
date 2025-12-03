; Multiply by 2 loop
; Store values from 10 - 2560 into memory

START:
    LOADI   R1, #10        ; R1 is the value to be stored (start at 10)
    LOADI   R2, #0         ; R2 is the memory address where we are storing the value associated with R1
    LOADI   R3, #8         ; R3 = loop limit. 8
    LOADI   R4, #1         ; R4 is the shift amount. R2 = 1 so we multiply by 2

LOOP:
    STORE   R1, [R2 + #0]     ; Store the value in R1 into the memory given by R2     
    SHFT    R1, R1, R4     ; Multiply R1 by 2 and store it back in R1
    ADDI    R2, R2, #1     ; increment memory index by 1
    BEQ     R2, R3, DONE   ; stop when index == 8
    B       LOOP           ; otherwise continue

DONE:
    HALT
