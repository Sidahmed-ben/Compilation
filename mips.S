 Yes rani dkhelt f la fonction  ! 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 COMPILE VAR 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 COMPILE VAR 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 COMPILE VAR 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 COMPILE VAR 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 COMPILE VAR 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 COMPILE VAR 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 COMPILE VAR 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 COMPILE VAR 
 Yes rani dkhelt f compile block   ! 
 rani dkhelt dans instr une fois   ! 
 Yes rani dkhelt f Assign   ! 
 COMPILE VAR 
.text
.globl main
_inf:
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  slt $v0, $t1, $t0
  jr $ra
_sup:
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  slt $v0, $t0, $t1
  jr $ra
_add:
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  add $v0, $t0, $t1
  jr $ra
_mul:
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  mul $v0, $t0, $t1
  jr $ra
puti:
  lw $a0, 0($sp)
  li $v0, 1
  syscall
  jr $ra
geti:
  li $v0, 5
  syscall
  jr $ra
puts:
  lw $a0, 0($sp)
  li $v0, 4
  syscall
  jr $ra
main:
  addi $sp, $sp, -24
  sw $ra, 20($sp)
  sw $fp, 16($sp)
  addi $fp, $sp, 20
  li $v0, 5
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 5
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _add
  addi $sp, $sp, 8
  sw $v0, -12($fp)
  li $v0, 0
  sw $v0, -16($fp)
  li $v0, 0
  sw $v0, -20($fp)
  li $v0, 1
  sw $v0, -8($fp)
loop_for1:
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 5
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _inf
  addi $sp, $sp, 8
  beqz $v0, exit_loop_for1
  lw $v0, -12($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 10
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _add
  addi $sp, $sp, 8
  sw $v0, -12($fp)
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 2
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _mul
  addi $sp, $sp, 8
  sw $v0, -8($fp)
  b loop_for1
exit_loop_for1:
  li $v0, 1
  sw $v0, -8($fp)
loop_for2:
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 5
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _inf
  addi $sp, $sp, 8
  beqz $v0, exit_loop_for2
  lw $v0, -12($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 10
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _add
  addi $sp, $sp, 8
  sw $v0, -12($fp)
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 2
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _add
  addi $sp, $sp, 8
  sw $v0, -8($fp)
  b loop_for2
exit_loop_for2:
loop_while3:
  lw $v0, -16($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 3
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _inf
  addi $sp, $sp, 8
  beqz $v0, exit_loop_while3
  lw $v0, -20($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 1
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _add
  addi $sp, $sp, 8
  sw $v0, -20($fp)
  lw $v0, -16($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 1
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _add
  addi $sp, $sp, 8
  sw $v0, -16($fp)
  b loop_while3
exit_loop_while3:
  move $a0, $v0
  li $v0, 1
  syscall
ret0:
  addi $sp, $sp, 24
  lw $ra, 0($fp)
  lw $fp, -4($fp)
  jr $ra

.data
