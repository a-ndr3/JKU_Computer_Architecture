.data
arr:    .word 4, 8, 12, 11, 5, 21, 1, 99, 41

.text
.globl main

main:

li t0, 0 #sum
li t1, 1 #while check
lui t4, 0x10000 #get addr of arr
#lw a6, 0(t4)
#la t4, arr+4
#lw a6, 0(t4)
bf:
lw a5, 0(t4)
while: bltu, a5, t1, done
add t0, t0, a5
j address

j while

address: #addr inc
addi t4, t4, 4
lw a5, 0(t4)
j while

done:
mv a0, t0
