# My HDLBits Solutions Archive
 
An archive of my solutions to [HDLBits](https://hdlbits.01xz.net/wiki/Main_Page) — a Verilog/RTL practice platform developed by University of Toronto. Working through this self-directed over summer 2026 ahead of first-year Electrical Engineering at the University of Waterloo, as prep for RTL/digital design & verification.

All problem sets organized by topic in their respective folders.
 
## Progress
 
**118 / 182 problems complete (64.8%)**
 
```
████████████████░░░░░░░░ 64.8%
```
 
| Section | Status |
|---|---|
| Getting Started | ✅ Complete |
| Verilog Language (Basics, Vectors, Modules, Procedures, More Features) | ✅ Complete |
| Circuits — Combinational Logic | ✅ Complete |
| Circuits — Sequential Logic (Latches/FFs, Counters, Shift Registers) | ✅ Complete |
| Circuits — More Circuits (Cellular Automata) | ✅ Complete |
| Circuits — Finite State Machines | 🔄 In progress |
| Circuits — Building Larger Circuits | ⬜ Not started |
| Verification — Reading Simulations | ⬜ Not started |
| Verification — Writing Testbenches | ⬜ Not started |
 
## Repo Structure
 
Solutions are organized to mirror HDLBits' own categories, so it's easy to cross-reference against the site.
 
## Solved Problems
 
### Getting Started
- [x] [Getting Started](https://hdlbits.01xz.net/wiki/step_one)
- [x] [Output Zero](https://hdlbits.01xz.net/wiki/zero)
### Verilog Language
 
**Basics**
- [x] [Simple wire](https://hdlbits.01xz.net/wiki/wire)
- [x] [Four wires](https://hdlbits.01xz.net/wiki/wire4)
- [x] [Inverter](https://hdlbits.01xz.net/wiki/notgate)
- [x] [AND gate](https://hdlbits.01xz.net/wiki/andgate)
- [x] [NOR gate](https://hdlbits.01xz.net/wiki/norgate)
- [x] [XNOR gate](https://hdlbits.01xz.net/wiki/xnorgate)
- [x] [Declaring wires](https://hdlbits.01xz.net/wiki/wire_decl)
- [x] [7458 chip](https://hdlbits.01xz.net/wiki/7458)


**Vectors**
- [x] [Vectors](https://hdlbits.01xz.net/wiki/vector0)
- [x] [Vectors in more detail](https://hdlbits.01xz.net/wiki/vector1)
- [x] [Vector part select](https://hdlbits.01xz.net/wiki/vector2)
- [x] [Bitwise operators](https://hdlbits.01xz.net/wiki/vectorgates)
- [x] [Four-input gates](https://hdlbits.01xz.net/wiki/gates4)
- [x] [Vector concatenation operator](https://hdlbits.01xz.net/wiki/vector3)
- [x] [Vector reversal 1](https://hdlbits.01xz.net/wiki/vectorr)
- [x] [Replication operator](https://hdlbits.01xz.net/wiki/vector4)
- [x] [More replication](https://hdlbits.01xz.net/wiki/vector5)


**Modules: Hierarchy**
- [x] [Modules](https://hdlbits.01xz.net/wiki/module)
- [x] [Connecting ports by position](https://hdlbits.01xz.net/wiki/module_pos)
- [x] [Connecting ports by name](https://hdlbits.01xz.net/wiki/module_name)
- [x] [Three modules](https://hdlbits.01xz.net/wiki/module_shift)
- [x] [Modules and vectors](https://hdlbits.01xz.net/wiki/module_shift8)
- [x] [Adder 1](https://hdlbits.01xz.net/wiki/module_add)
- [x] [Adder 2](https://hdlbits.01xz.net/wiki/module_fadd)
- [x] [Carry-select adder](https://hdlbits.01xz.net/wiki/module_cseladd)
- [x] [Adder-subtractor](https://hdlbits.01xz.net/wiki/module_addsub)


**Procedures**
- [x] [Always blocks (combinational)](https://hdlbits.01xz.net/wiki/alwaysblock1)
- [x] [Always blocks (clocked)](https://hdlbits.01xz.net/wiki/alwaysblock2)
- [x] [If statement](https://hdlbits.01xz.net/wiki/always_if)
- [x] [If statement latches](https://hdlbits.01xz.net/wiki/always_if2)
- [x] [Case statement](https://hdlbits.01xz.net/wiki/always_case)
- [x] [Priority encoder](https://hdlbits.01xz.net/wiki/always_case2)
- [x] [Priority encoder with casez](https://hdlbits.01xz.net/wiki/always_casez)
- [x] [Avoiding latches](https://hdlbits.01xz.net/wiki/always_nolatches)


**More Verilog Features**
- [x] [Conditional ternary operator](https://hdlbits.01xz.net/wiki/conditional)
- [x] [Reduction operators](https://hdlbits.01xz.net/wiki/reduction)
- [x] [Reduction: Even wider gates](https://hdlbits.01xz.net/wiki/gates100)
- [x] [Combinational for-loop: Vector reversal 2](https://hdlbits.01xz.net/wiki/vector100r)
- [x] [Combinational for-loop: 255-bit population count](https://hdlbits.01xz.net/wiki/popcount255)
- [x] [Generate for-loop: 100-bit binary adder 2](https://hdlbits.01xz.net/wiki/adder100i)
- [x] [Generate for-loop: 100-digit BCD adder](https://hdlbits.01xz.net/wiki/bcdadd100)

### Circuits — Combinational Logic
 
**Basic Gates**
- [x] [Wire](https://hdlbits.01xz.net/wiki/exams/m2014_q4h)
- [x] [GND](https://hdlbits.01xz.net/wiki/exams/m2014_q4i)
- [x] [NOR](https://hdlbits.01xz.net/wiki/exams/m2014_q4e)
- [x] [Another gate](https://hdlbits.01xz.net/wiki/exams/m2014_q4f)
- [x] [Two gates](https://hdlbits.01xz.net/wiki/exams/m2014_q4g)
- [x] [More logic gates](https://hdlbits.01xz.net/wiki/gates)
- [x] [7420 chip](https://hdlbits.01xz.net/wiki/7420)
- [x] [Truth tables](https://hdlbits.01xz.net/wiki/truthtable1)
- [x] [Two-bit equality](https://hdlbits.01xz.net/wiki/mt2015_eq2)
- [x] [Simple circuit A](https://hdlbits.01xz.net/wiki/mt2015_q4a)
- [x] [Simple circuit B](https://hdlbits.01xz.net/wiki/mt2015_q4b)
- [x] [Combine circuits A and B](https://hdlbits.01xz.net/wiki/mt2015_q4)
- [x] [Ring or vibrate?](https://hdlbits.01xz.net/wiki/ringer)
- [x] [Thermostat](https://hdlbits.01xz.net/wiki/thermostat)
- [x] [3-bit population count](https://hdlbits.01xz.net/wiki/popcount3)
- [x] [Gates and vectors](https://hdlbits.01xz.net/wiki/gatesv)
- [x] [Even longer vectors](https://hdlbits.01xz.net/wiki/gatesv100)


**Multiplexers**
- [x] [2-to-1 multiplexer](https://hdlbits.01xz.net/wiki/mux2to1)
- [x] [2-to-1 bus multiplexer](https://hdlbits.01xz.net/wiki/mux2to1v)
- [x] [9-to-1 multiplexer](https://hdlbits.01xz.net/wiki/mux9to1v)
- [x] [256-to-1 multiplexer](https://hdlbits.01xz.net/wiki/mux256to1)
- [x] [256-to-1 4-bit multiplexer](https://hdlbits.01xz.net/wiki/mux256to1v)


**Arithmetic Circuits**
- [x] [Half adder](https://hdlbits.01xz.net/wiki/hadd)
- [x] [Full adder](https://hdlbits.01xz.net/wiki/fadd)
- [x] [3-bit binary adder](https://hdlbits.01xz.net/wiki/adder3)
- [x] [Adder](https://hdlbits.01xz.net/wiki/exams/m2014_q4j)
- [x] [Signed addition overflow](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q1c)
- [x] [100-bit binary adder](https://hdlbits.01xz.net/wiki/adder100)
- [x] [4-digit BCD adder](https://hdlbits.01xz.net/wiki/bcdadd4)


**Karnaugh Map to Circuit**
- [x] [3-variable](https://hdlbits.01xz.net/wiki/kmap1)
- [x] [4-variable](https://hdlbits.01xz.net/wiki/kmap2)
- [x] [4-variable](https://hdlbits.01xz.net/wiki/kmap3)
- [x] [4-variable](https://hdlbits.01xz.net/wiki/kmap4)
- [x] [Minimum SOP and POS](https://hdlbits.01xz.net/wiki/exams/ece241_2013_q2)
- [x] [Karnaugh map](https://hdlbits.01xz.net/wiki/exams/m2014_q3)
- [x] [Karnaugh map](https://hdlbits.01xz.net/wiki/exams/2012_q1g)
- [x] [K-map implemented with a multiplexer](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q3)

### Circuits — Sequential Logic
 
**Latches and Flip-Flops**
- [x] [D flip-flop](https://hdlbits.01xz.net/wiki/dff)
- [x] [D flip-flops](https://hdlbits.01xz.net/wiki/dff8)
- [x] [DFF with reset](https://hdlbits.01xz.net/wiki/dff8r)
- [x] [DFF with reset value](https://hdlbits.01xz.net/wiki/dff8p)
- [x] [DFF with asynchronous reset](https://hdlbits.01xz.net/wiki/dff8ar)
- [x] [DFF with byte enable](https://hdlbits.01xz.net/wiki/dff16e)
- [x] [D Latch](https://hdlbits.01xz.net/wiki/exams/m2014_q4a)
- [x] [DFF](https://hdlbits.01xz.net/wiki/exams/m2014_q4b)
- [x] [DFF](https://hdlbits.01xz.net/wiki/exams/m2014_q4c)
- [x] [DFF+gate](https://hdlbits.01xz.net/wiki/exams/m2014_q4d)
- [x] [Mux and DFF](https://hdlbits.01xz.net/wiki/mt2015_muxdff)
- [x] [Mux and DFF](https://hdlbits.01xz.net/wiki/exams/2014_q4a)
- [x] [DFFs and gates](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q4)
- [x] [Create circuit from truth table](https://hdlbits.01xz.net/wiki/exams/ece241_2013_q7)
- [x] [Detect an edge](https://hdlbits.01xz.net/wiki/edgedetect)
- [x] [Detect both edges](https://hdlbits.01xz.net/wiki/edgedetect2)
- [x] [Edge capture register](https://hdlbits.01xz.net/wiki/edgecapture)
- [x] [Dual-edge triggered flip-flop](https://hdlbits.01xz.net/wiki/dualedge)


**Counters**
- [x] [Four-bit binary counter](https://hdlbits.01xz.net/wiki/count15)
- [x] [Decade counter](https://hdlbits.01xz.net/wiki/count10)
- [x] [Decade counter again](https://hdlbits.01xz.net/wiki/count1to10)
- [x] [Slow decade counter](https://hdlbits.01xz.net/wiki/countslow)
- [x] [Counter 1-12](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q7a)
- [x] [Counter 1000](https://hdlbits.01xz.net/wiki/exams/ece241_2014_q7b)
- [x] [4-digit decimal counter](https://hdlbits.01xz.net/wiki/countbcd)
- [x] [12-hour clock](https://hdlbits.01xz.net/wiki/count_clock)


**Shift Registers**
- [x] [4-bit shift register](https://hdlbits.01xz.net/wiki/shift4)
- [x] [Left/right rotator](https://hdlbits.01xz.net/wiki/rotate100)
- [x] [Left/right arithmetic shift by 1 or 8](https://hdlbits.01xz.net/wiki/shift18)
- [x] [5-bit LFSR](https://hdlbits.01xz.net/wiki/lfsr5)
- [x] [3-bit LFSR](https://hdlbits.01xz.net/wiki/mt2015_lfsr)
- [x] [32-bit LFSR](https://hdlbits.01xz.net/wiki/lfsr32)
- [x] [Shift register](https://hdlbits.01xz.net/wiki/exams/m2014_q4k)
- [x] [Shift register](https://hdlbits.01xz.net/wiki/exams/2014_q4b)
- [x] [3-input LUT](https://hdlbits.01xz.net/wiki/exams/ece241_2013_q12)

### Circuits — More Circuits
 
**More Circuits (Cellular Automata)**
- [x] [Rule 90](https://hdlbits.01xz.net/wiki/rule90)
- [x] [Rule 110](https://hdlbits.01xz.net/wiki/rule110)
- [x] [Conway's Game of Life 16x16](https://hdlbits.01xz.net/wiki/conwaylife)

## Up Next
 
- Finite State Machines
- Building Larger Circuits
- Verification: Reading Simulations
- Verification: Writing Testbenches
## Notes
 
A few problems worth calling out for the design decisions involved rather than being pure syntax exercises:
- **32-bit LFSR** — Galois-style LFSR structure, choosing correct tap positions for a maximal-length sequence.
- **12-hour clock** — multi-field state (hours/minutes/seconds) with carry logic between fields and edge cases at 12:59:59 → 1:00:00.
- **Conway's Game of Life (16×16 toroidal)** — wrap-around neighbor indexing on a toroidal grid, and the blocking vs. non-blocking assignment pitfalls that come up when updating a full grid state in one clock edge.

 
All solutions here were simulated successfully virtually with [ModelSim](https://www.altera.com/downloads/simulation-tools/modelsim-fpgas-standard-edition-software-version-18-1) and synthesized successfully with [Altera Quartus](https://www.altera.com/products/development-tools/quartus).

By Zhiyuan (Jerry) Jiang
 
