###Exemple:

> \#1 SM (Streaming Multiprocessor)<BR>
>> \#3 Thread-Blocks assigned to 1 SM<BR>
>>> \#8 Thread-Warps in 1 Thread-Block (SIMD controller)<BR>
>>>> \#32 Threads in a Thread-Warps (SIMD data)

<BR>
> \#1 SM<BR>
> > \# 3 Thread-Blocks<BR>
> > \# 24 Thread-Warps<BR>
> > \# 768 Threads

<BR>
> \# 1 Thread-Blocks<BR>
> > \# 8 Thread-Warps<BR>
> > \# 256 Threads


###SM:
- SM has a hardware ressources (Shared Memory, L1, Register File)
- SM maintains idx
- SM schedules thread execution with Zero-Overhead warp scheduling