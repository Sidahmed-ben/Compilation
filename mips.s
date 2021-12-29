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
_egal:
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  sub $v0, $t0, $t1
  beqz $v0, zero
  li $v0, 0
  jal fin_egal
zero:
  li $v0, 1
  jal fin_egal
fin_egal:
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  jr $ra
_add:
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  add $v0, $t0, $t1
  jr $ra
_sub:
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  sub $v0, $t1, $t0
  jr $ra
_mul:
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  mul $v0, $t0, $t1
  jr $ra
_div:
  lw $t0, 0($sp)
  lw $t1, 4($sp)
  div $v0,$t1,$t0
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
  addi $sp, $sp, -12
  sw $ra, 8($sp)
  sw $fp, 4($sp)
  addi $fp, $sp, 8
  la $v0, str1
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -8($fp)
loop_while1:
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 20
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _inf
  addi $sp, $sp, 8
  beqz $v0, exit_loop_while1
  la $v0, str2
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -8($fp)
  b loop_while1
exit_loop_while1:
  la $v0, str3
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puti
  addi $sp, $sp, 4
ret0:
  addi $sp, $sp, 12
  lw $ra, 0($fp)
  lw $fp, -4($fp)
  jr $ra

.data
str1: .asciiz "saisissez un entier sup à 20 SVP !! 
"
str2: .asciiz "saisissez un entier SVP !! 
"
str3: .asciiz " a = "
