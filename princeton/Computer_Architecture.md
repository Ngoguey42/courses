<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Computer_Architecture.md                           :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/11/04 15:37:50 by ngoguey           #+#    #+#            -->
<!-- Updated: 2016/12/29 23:52:42 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->


```
*	i(n+2)	i(n+1)	i(n+0)	i(n-1)	i(n-2)
*					-this-
*	--following--	 		--previous---
*	---earlier---			----later----
*	---younger---			----older----
*			  				---further---

*  <-------------  -this-	------------>
*  ---backward---			---forward---
```

# L00S1 - Course Introduction (9:06) (1%)
RAS

# L01S1 - Course Overview (4:34) (1%)
- Course: ELE 475
- Prerequisites: ELE375 ELE206
- Books:
  - Computer Architecture a quantitative approach v5
  - Modern processor design and fundamental of superscalar processors

# L01S2 - Motivation (16:40) (2%)
- Computer Architecture is mapping applications to physics
  - Ex: compass
- Abstractions:
  1. Application
  1. Algorithm
  1. Programming language
  1. OS/VM
  1. Instruction set architecture (ELE475)
  1. Microarchitecture (ELE475)
  1. Register-transfer level (ELE475)
  1. Gates
  1. Circuits
  1. Devices
  1. Physics
- Ref: IAS machine John Von Nuemann
- log-plot Performances / years (Moor's law)
  - RISC computers
  - multi-core processors

# L01S3 - Course Content (9:10) (2%)
##### 375 vs 475
- ELE375
  - RISC 1 processor (50k transistors)
  - basic cache, pipelining, memory system, digital logic
- ELE475
  - i7 (700m transistors)

##### Content
- Instruction level parallelism
  - superscalar
  - very long instruction word (vliw)
- Pipeline parallelism
- Advanced memory caches
- data parallelism
  - vector
  - gpu
- thred level parallelism
  - multithreading
  - multiprocessor
  - multicore
  - manycore

# L01S4 - Architecture and Microarchitecture (23:37) (4%)
- **A**rchitecture aka Instruction Set Architecture (ISA)
  - Abstract machine model (programmer visible state)
  - Operations (instructions)
  - Execution semantics (interrupts)
  - Input/Output
  - Data types (float, byte, word, etc..)
- Microarchitecture aka Origanization aka Implementation of ISA
  - frequency, energy, cost
  - pipeline/ALU/bus depth/number/width

##### History
Ex: AMD Phenom x4 vs Intel Atom (both x86 IS)

# L01S5 - Machine Models (16:02) (5%)
- Source of operands in an ALU and destination
  - Stack vs Accumulator vs Register-memory vs `Register-register (Load store archi)`

##### Stack-based ISA
- No named operands
- jvm, x87, lua?
- Ex: Reverse polish
- Stack size / `Operands location (reg vs mem)`

<br>

Ex: `C = A + B` instructions on all 4 machine models

# L01S6 - ISA Characteristics (25:47) (6%)
##### Classes of Instructions
1. Data transfer
  - `LD load`, `ST store`, `MFC1 move from control reg`, `MTC1 move to c.r.`
1. ALU
  - `Add`, `SUB`, `XOR`, `SLT set less then`, etc...
1. Control flow
  - `BEQZ branch`, `JR jump`, `TRAP`
1. Floating point
  - `Add.D`, `C.LT.D compare`, `CVT.S.W convert`, etc...
1. Multimedia (SIMD)
  - `ADD.PS`
1. String
  - `REP MOVSB`

##### Addressing Modes:
1. Register (move)
1. Immediate (add literal)
1. Displacement (lookup in memory with literal offset)
1. Register indirect (add with an operand from memory)
1. Absolute (add with literal address)
1. Memory indirect (add with an operand comming from multiple memory dereferencements)
1. PC relative (access memory near PC with literal offset)
1. Scaled (multi dimensional memory fetches)

##### Data types
- binary integer / bit width
- base 10 encoded number
- floating point(IEEE 754, intel extended precision) / bit width
- packed vector data
- addresses / bit width

##### Encoding of instructions
1. Fixed width
  - RISC, MISP, PPC, SPARC, ARM
  - MISP (every instruction 4 bytes)
1. variable length instruction
  - Ref: `Hoffman encoding`
  - CISC, IBM 360, x86, 68k, VAX
  - x86 (between 1 and 17bytes)
1. mostly fixed aka compressed
  - MIPS16, THUMB (2 or 4 bytes)
  - PPC, VLIW (compression / decompression)
1. Long instruction word:
  - Multiflow, Lx, TI C6000
- Table comparison of real world instruction sets

<br>

Red: Refister Windows, registers allocation

# L01S7 - Recap (01:17) (6%)
RAS

# L02S1 - Microcoded Microarchitecture (14:08) (7%)
- Ex: Bus-based datapath for RISC

# L02S2 - Pipeline Basics (30:51) (9%)
- Ex: Unpipelined datapath for MIPS
- 5 Stage pipeline
  - Fetch phase aka instruction fetch phase aka `F` aka `IF` aka `IM`
  - decode + register-fetch phase aka `D` aka `RF`
  - Execute phase aka `X` aka `EX` aka `ALU`
  - Memory phase aka `M` aka `MEM` aka `DM` (longest)
  - Write back phase aka `W` aka `WB` aka `RW`
- `Iron Law` of processor performance
  - Time/Program = Instructions/Program * Cycles/Instruction * Time/Cycle
- Microcoded / Unpipelined / Pipelined

# L02S3 - Structural Hazard (10:13) (10%)
- 2 Instruction need the same hardware at the same time
- Solutions: `Schedule` / `Stall` / `Duplicate`
- 5-stage pipeline has no structural hazards
- Ex: `Unified memory`
- Ex: `2-cycle memory`

# L02S4 - Data Hazards (46:33) (12%)
- An instruction depends on a data value still in the pipeline
- Solutions: `Schedule` / `Stall` / `Bypass` / `Speculate`
- `Feedback`
- Each stall or kill introduces a bubble in the pipeline (CPI > 1)
- Stall: Multiplexer, interlocks, nop
  - read enable / write enable
- Bypass: Multiplexer

# L03S1 - Control Hazards, Jumps (15:56) (13%)
- `Speculation`
  - Next instr is not going to be a jump, else early instructions need to be killed

# L03S2 - Control Hazards, Branch (24:02) (15%)

##### Reducing branch penalty
- Zero detecter out of register file
- Expose control hazard to software
  - Branch delay slot (filled 70% says `specint`)

# L03S3 - Control Hazards, Others(7:51) (15%)
- Load delay slot
- Exceptions, Interrupts

# L03S4 - Memory Technologies (22:47) (17%)
- Memory arrays Register File
- SRAM
- DRAM (DRAM refresh every few seconds)

# L03S5 - Motivation for Caches (22:25) (18%)
- Bandwidth-delay product
  - Amount of data that can be in flight at the same time (Little's law)
- Memory size affects latency
- Ex: Common and predictable memory reference patterns (graph: address / time)
  - Temporal locality (exploited by cache when storing)
  - Spatial locality (exploited by cache when fetching blocks)

# L04S1 - Classifying Caches (28:07) (20%)
- Address tag / Cache line / Data block
- Cache miss / Cache miss / victim block
- Block placement
  - Direct mapped cache (modulo array)
  - Set associative (n-way) (modulo bucket array)
  - Fully associative (random access array)
- Block replacement
  - Random
  - LRU
  - FIFO
  - NMRU (FIFO with exception for MRU blocks)
- Write strategy
  - Cache hit
    - Write through
    - Write back
    - Both (multilvl cache)
- Cache miss
  - No Write Allocate
  - Write Allocate

# L04S2 - Cache Performance (17:11) (21%)
- Types of cache misses:
  - Compulsory
  - Capacity
  - Conflict
- Rule of thumb1: *2 cache size /2^.5 miss rate
- Rule of thumb2: miss-rate(direct-mapped(size: n)) = miss-rate(two-way(size: n/2))

# L04S3 - Superscalar 1 (6:42) (21%)
- Types of data hazard
  - Data-dependence RAW
  - Anti-dependence WAR
  - Output-dependence WAW

# L04S4 - Basic Two-way In-order Superscalar (4:56) (21%)
- Ex: Two asymetric pipelines
  - Issue logic/Instruction steering

# L04S5 - Fetch Logic and Alignment (11:01) (22%)
ras

# L05S1 - Baseline Superscalar and Alignment (4:16) (22%)
ras

# L05S2 - Interrupts and Bypassing (12:13) (23%)
- Clustered superscalar
- Decode + issue stage
- 98% accurate branch prediction in modern day cpu

# L05S3 - Interrupts and Exceptions (29:25) (25%)
- Async interrupts (external event)
  - input/output device service request
  - timer expiration
  - power disruptions
  - hardware failure
- Sync interrupts (exceptions / trap)
  - undefined opcode
  - privileged instruction
  - arithmetic overflow
  - FPU exception
  - virtual memory exceptions
  - syscalls
- Commit point

# L05S4 - Introduction to Out-of-Order Processors (30:53) (27%)
- Table of all 5 types of ooo processors
  - Frontend: Instruction fetch / decode
  - Issue
  - Writeback
  - Commit
- Ref: Dataflow machine
- Functional unit
- Ex: `I4`
  - ARF: architecture register file
  - SB: scoreboard

| name | frontend-issue-writeback-commit |
|------|---------------------------------|
| I4   | IIII                            |
| I2O2 | IIOO                            |
| I2OI | IIOI                            |
| IO3  | IOOO                            |
| IO2I | IOOI                            |

# L06S1 - Review of Out-of-Order Processors (3:26) (27%)
ras

# L06S2 - I2O2 Processors (19:58) (28%)
- Scoreboard help track structural hazards

# L06S3 - I2O1 Processors (28:44) (30%)
- Structures
  - SB
  - ARF
  - PRF: Physical register file (future file)
- ROB: Reorder buffer
  - FSB: Finished store buffer
- PRF written ooo, but ROB commits in order
- FSB stalls the memory write
- ARF is used when interrupts or branches
- ROB
  - Commit happen only when the oldest instruction in the ROB is finished
  - Speculative bit
- CSB: Commit store buffer

# L06S4 - IO3 Processors (16:23) (31%)
- Structures
  - SB
  - ARF
  - IQ: Issue queue

# L06S5 - IO2I Processors (4:31) (31%)
ras

# L07S1 - Speculation and Branch (14:37) (32%)
ras

# L07S2 - Register Renaming Introduction (11:08) (33%)
- Name dependencies: WAW & WAR
- True dependencies: RAW

# L07S3 - Register Renaming with Pointers to IQ and ROB (24:54) (34%)
- Structures
  - FL: Free List. Entry: physical register, 1bit for busyness
  - RT: Rename Table, Entry: architectural register, 1bit is pending, few bits for physical destination
- ROB modifications
  - Architectural register file specifier
  - Previous physical register
- Ref: Intel cpu with 100 instructions pending

# L07S4 - Register Renaming with Values in IQ and ROB (12:14) (35%)
- No FL
- PRF merged into ROB
- ROB modifications
- IQ modifications
- RT modifications

# L07S5 - Memory Disambiguation (9:49) (35%)
- Address speculation
- Memory dependence prediction

# L08S1 - Limits of Out-of-Order Design Complexity (13:13) (36%)
- Out-of-order control logic grows > W^2
- Ex: Microchip photo showing control logic space taken
- Ex: ISA bottleneck, compiler vs cpu

# L08S2 - Introduction to VLIW (21:57) (38%)
- Bundle of operations inside one instruction
  - No dependency check in one bundle
- Model: Equal scheduling(EQ)
  - The operations take effect exactly at the specified latency
  - Compiler handles everything
  - Less physical registers
  - Interrupts are hard to handle (or impossible)
- Model: Less than or equals model (LEQ)
  - The operations take effect exactly or faster than the specified latency
- History

# L08S3 - VLIW Compiler Optimizations (21:20) (39%)
- Loop unrolling
- Software pipelining
  - Prolog, iterationg, epilog
- Basic block
  - Piece of code with single entry/exit
- Trace Scheduling
  - Follow the most probable branches, forming a trace
  - Schedule the whole trace at once
  - Add fixup code to cope with branchese jumping out of trace

# L08S4 - Classic VLIW Challenges (8:18) (39%)
ras

# L08S5 - Introduction to Predication (9:51) (40%)
- Partial predication `movz` `movnz`
- Full predicatiopn
  - Predicate register

# L09S1 - Scheduling Model Review (5:58) (40%)


# L09S2 - Review of Predication (30:48) (42%)
# L09S3 - Predication Implementation (10:06) (43%)
# L09S4 - Speculation Execution (26:02) (44%)
# L09S5 - Dynamic Events and Clustered VLIWs (10:42) (45%)
# L09S6 - Case Study- IA-64-Itanium (21:10) (46%)
# L10S1 - Branch Cost Motivation (6:37) (47%)
# L10S2 - Branch Prediction Introduction (5:18) (47%)
# L10S3 - Static Outcome Prediction (16:05) (48%)
# L10S4 - Dynamic Outcome Prediction (29:12) (50%)
# L10S5 - Target Address Prediction (18:45) (51%)
# L11S1 - Basic Cache Optimizations (16:08) (52%)
# L11S2 - Cache Pipelining (14:16) (53%)
# L11S3 - Write Buffers (9:52) (53%)
# L11S4 - Multilevel Caches (17:37) (54%)
# L11S5 - Victim Caches (6:04) (55%)
# L11S6 - Prefetching (12:34) (55%)
# L12S1 - Multiporting and Banking (20:08) (57%)
# L12S2 - Software Memory Optimizations (16:53) (58%)
# L12S3 - Non-blocking Caches (19:29) (59%)
# L12S4 - Critical Word First and Early Restart (3:06) (59%)
# L13S1 - Memory Management Introduction (13:04) (60%)
# L13S2 - Base and Bound Registers (11:44) (60%)
# L13S3 - Page Based Memory Systems (27:04) (62%)
# L13S4 - Translation and Protection (14:37) (63%)
# L13S5 - TLB Processing (12:00) (64%)
# L14S1 - Address Translation Review (9:36) (64%)
# L14S2 - Cache and Memory Protection Interaction (22:18) (65%)
# L14S3 - Vector Processor Introduction (18:04) (67%)
# L14S4 - Vector Parallelism (6:44) (67%)
# L14S5 - Vector Hardware Optimizations (18:52) (68%)
# L14S6 - Vector Software and Compiler Optimizations (5:54) (68%)
# L15S1 - Reduction, Scatter-Gather, and the Cray 1 (9:20) (69%)
# L15S2 - SIMD (6:58) (69%)
# L15S3 - GPUs (20:02) (71%)
# L15S4 - Multithreading Motivation (7:33) (71%)
# L15S5 - Course-Grain Multithreading (26:16) (73%)
# L15S6 - Simultaneous Multithreading (12:53) (73%)
# L16S1 - SMT Implementation (17:19) (74%)
# L16S2 - Introduction to Parallelism (17:59) (76%)
# L16S3 - Sequential Consistency (21:00) (77%)
# L16S4 - Introduction to Locks (03:39) (77%)
# L17S1 - Sequential Consistency Review (3:48) (77%)
# L17S2 - Locks and Semaphores (10:01) (78%)
# L17S3 - Atomic Operations (27:11) (79%)
# L17S4 - Memory Fences (11:11) (80%)
# L17S5 - Dekker-'s Algorithm (14:13) (81%)
# L18S1 - Locking Review (2:04) (81%)
# L18S2 - Bus Implementation (12:11) (82%)
# L18S3 - Cache Coherence (17:04) (83%)
# L18S4 - Bus-Based Multiprocessors (5:16) (83%)
# L18S5 - Cache Coherence Protocols (49:00) (86%)
# L19S1 - More Cache Coherence Protocols- (21:16) (87%)
# L19S2 - Introduction to Interconnection Networks (8:29) (88%)
# L19S3 - Message Passing (26:59) (90%)
# L19S4 - Interconnect Design (15:06) (90%)
# L20S1 - Networking Review (7:56) (91%)
# L20S2 - Topology (18:53) (92%)
# L20S3 - Topology Parameters (14:25) (93%)
# L20S4 - Network Performance (15:35) (94%)
# L20S5 - Routing and Flow Control (20:27) (95%)
# L21S1 - Credit Based Flow Control (7:23) (96%)
# L21S2 - Deadlock (10:09) (96%)
# L21S3 - False Sharing (9:29) (97%)
# L21S4 - Introduction to Directory Coherence (12:55) (97%)
# L21S5 - Implementation (29:02) (99%)
# L21S6 - Scalability of Directory Coherence (13:31) (100%)
