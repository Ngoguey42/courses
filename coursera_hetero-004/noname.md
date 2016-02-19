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
