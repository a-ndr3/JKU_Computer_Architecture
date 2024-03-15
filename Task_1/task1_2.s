li s0, 0x1234cafe
li s1, 0xfeedfeed
not s0, s0
not s1, s1
or t0, s0, s1
not s0, s0
not s1, s1
and t1, s0, s1
xor a0, t0, t1