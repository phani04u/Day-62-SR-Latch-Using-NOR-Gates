# Day 62: SR Latch Using NOR Gates

## Overview
This project demonstrates the design and simulation of an SR (Set-Reset) latch using cross-coupled NOR gates. The SR latch is a basic sequential logic circuit capable of storing one bit of information.

## Objectives
- Understand the working principle of an SR latch.
- Design an SR latch using NOR gates.
- Implement the logic using Verilog HDL.
- Verify the circuit behavior using a simulation testbench.
- Analyze the Set, Reset, Hold, and Invalid conditions.

## Tools Used
- Verilog HDL
- Xilinx Vivado 2016.4

## Truth Table

| S | R | Q(next) | Operation |
|---|---|---------|-----------|
| 0 | 0 | Previous Q | Hold |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | 0 | Invalid |

**Note:** For a NOR-based SR latch, when S = 1 and R = 1, both outputs become 0. This violates the normal complementary-output relationship. When both inputs return to 0, the final state may be unpredictable.

## Working Principle
The SR latch consists of two cross-coupled NOR gates, where the output of each gate feeds back into the other gate.

- **Set (S = 1, R = 0):** Q becomes 1.
- **Reset (S = 0, R = 1):** Q becomes 0.
- **Hold (S = 0, R = 0):** The circuit retains its previous state.
- **Invalid (S = 1, R = 1):** Both outputs become 0, making this an invalid operating condition.

## Design and Verification
The circuit is designed using Verilog HDL and verified through simulation in Xilinx Vivado. The testbench applies different input combinations and checks the resulting output behavior.

## Key Learning Outcomes
- Learned how cross-coupled NOR gates store one bit of information.
- Understood the difference between combinational and sequential circuits.
- Studied the Set, Reset, Hold, and Invalid conditions.
- Practiced Verilog design and simulation using Vivado.

## Conclusion
The SR latch is a fundamental sequential circuit used to understand memory elements and feedback in digital systems. This project builds a foundation for studying latches, flip-flops, registers, and other sequential circuits.

---
**Day 62 of my RTL Design Journey**  
#Verilog #RTLDesign #DigitalElectronics #VLSI #SRLatch
