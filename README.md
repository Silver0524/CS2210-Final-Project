# CS 2210 Final Project - Catamount Processing Unit (CPU) Simulator

Christian Paul & Sorin Kacmarczyk

---

A simplified **16-bit RISC CPU simulator** built in **Python** as the final project for UVM's Computer Organization (CS 2210) course.

The **Catamount Processing Unit** models how a basic CPU fetches, decodes, and executes instructions using a Harvard architecture and a compact instruction set. It’s designed for educational clarity — no pipelining or gate-level logic, just the core mechanics of CPU execution.

---

## Overview

- **16-bit RISC architecture** with 8 general-purpose registers
- **Harvard architecture:** separate instruction and data memory
- **Single ALU** handling arithmetic and logic operations
- **Custom instruction set (16 instructions)** including arithmetic, memory, and branching instructions
- **Status flags:** Zero (Z), Negative (N), Carry (C), Overflow (V)
- **Stack operations** for subroutines (`CALL`, `RET`)
- **HALT** instruction to stop execution
