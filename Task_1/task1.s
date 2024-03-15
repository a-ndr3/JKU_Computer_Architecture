addi s0, zero, -13
addi s1, zero, 19
sll t0, s0, s1
neg t1, t0 #t1 skobka
mul t0, s0, s1
add t2, t0, t1
srli t1, t2, 7
li t0, 1280
xor a0, t1, t0