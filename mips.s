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
_puti:
  lw $a0, 0($sp)
  li $v0, 1
  syscall
  jr $ra
_geti:
  li $v0, 5
  syscall
  jr $ra
_puts:
  lw $a0, 0($sp)
  li $v0, 4
  syscall
  jr $ra
main:
  addi $sp, $sp, -8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addi $fp, $sp, 4
  la $v0, str1
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  la $v0, str2
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  la $v0, str2
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  move $a0, $v0
  li $v0, 1
  syscall
ret0:
  addi $sp, $sp, 8
  lw $ra, 0($fp)
  lw $fp, -4($fp)
  jr $ra

.data
str1: .asciiz "bonjour
"
str2: .asciiz "salut
"
