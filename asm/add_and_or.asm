; Determine if it is safe to use bitwise OR for addition
; R0, R1: input operands
; R2: result (R0 | R1 if safe, otherwise 0)

START:
    LOADI   R0, #10            ; example operand 1
    LOADI   R1, #5             ; example operand 2
    LOADI   R2, #0             ; default to unsafe, result = 0

    AND     R3, R0, R1         ; compute R0 & R1, sets Z flag
    BEQ     SAFE               ; if Z == 1, operation is safe
    B       DONE               ; skip OR when unsafe
SAFE:
    OR      R2, R0, R1         ; safe to OR, produce "sum"
DONE:
    HALT
