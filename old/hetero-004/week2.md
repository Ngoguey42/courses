# Lecture 2.1: Kernel-based Parallel Programming - Thread Scheduling
##Details:
- SM has a hardware ressources (Shared Memory, L1, Register File)
- SM maintains idx
- SM schedules thread execution with Zero-Overhead warp scheduling
- SM can contain 8 Blocks maximum
- Thread-Warps contains 32 Threads

##Exemple1 (SM):
| SM | TBlock | TWarp | Thread |
|:--:|:------:|:-----:|:------:|
|  1 |    3   |   24  |   768  |
|    |    1   |   8   |   256  |
|    |        |   1   |   32   |
|    |        |       |    1   |

##Exemple2 (block granularity with 1536 threads):
###8x8 blocks (bad):
| SM |           TBlock           |  Thread  |
|:--:|:--------------------------:|:--------:|
|  1 | 8/24 (24 wanted but 8 max) | 512/1536 |
|    |              1             | 64 (8*8) |

###16x16 blocks (good):
| SM | TBlock |    Thread   |
|:--:|:------:|:-----------:|
|  1 |    6   |  1536/1536  |
|    |    1   | 256 (16*16) |


###32x32 blocks (bad):
| SM |              TBlock              |    Thread    |
|:--:|:--------------------------------:|:------------:|
|  1 | 1/2 (no room for a second block) |   1024/1536  |
|    |                 1                | 1024 (32*32) |

#Lecture 2.2: Control Divergence

- Warp scheduling on control flow
- Instruction needs to be fetched and decoded before execution
- 3 Types on inst: operate/data transfer/program control flow

##Control flow:
- Branch instruction (control statement in c language, while/if)
- Performance penalty when threads in the same warp diverge
- Different execution paths are serialized in current GPUs :(
- `if (threadIdx.x > 2) {...} else {...}` some overhead
- `if (blockIdx.x > 2) {...} else {...}` no overhead

##Thread blocks partition:
- Thread IDs within a warp are consecutive
- Warp 0 starts with TID 0

#Lecture 2.3: Memory Model and Locality -- CUDA Memories
- Registers, shared memory, global memory, constant memory

#Lecture 2.4: Tiled Parallel Algorithms
#Lecture 2.5: Tiled Matrix Multiplication
- `load in shared mem`; `__syncthreads()`; `work`;

#Lecture 2.6: Tiled Matrix Multiplication Kernel
#Lecture 2.7: Handling Boundary Conditions in Tiling
#Lecture 2.8: A Tiled Kernel for Arbitrary Matrix Dimensions
