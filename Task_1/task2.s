li t3, 0 #sum
li t1, 0 #loop counter
li t2, 100 #loop limit
li x13, 3 #divisor 1
li x15, 5 #divisor 2

for: bge t1, t2, done #loop from 0 to 99
rem x10, t1, x13 #check if divisible by 3
beq x10, x0, addsum #if divisible, add to sum
rem x10, t1, x15
beq x10, x0, addsum
j continue #jump to continue

addsum:
add t3, t3, t1

continue: 
addi t1, t1, 1 #increment loop counter
j for #jump to for

done:
mv a0, t3 #return sum
