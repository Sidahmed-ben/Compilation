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
  addi $sp, $sp, -24
  sw $ra, 20($sp)
  sw $fp, 16($sp)
  addi $fp, $sp, 20
  li $v0, 0
  sw $v0, -8($fp)
  li $v0, 1
  sw $v0, -12($fp)
  li $v0, 0
  sw $v0, -16($fp)
  la $v0, str1
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
loop_while1:
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 2
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
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 0
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _egal
  addi $sp, $sp, 8
  beqz $v0, else2
  la $v0, str3
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  b endif2
else2:
  lw $v0, -8($fp)
  sw $v0, -16($fp)
  li $v0, 1
  sw $v0, -20($fp)
loop_for3:
  lw $v0, -20($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  lw $v0, -16($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _inf
  addi $sp, $sp, 8
  beqz $v0, exit_loop_for3
  lw $v0, -12($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _mul
  addi $sp, $sp, 8
  sw $v0, -12($fp)
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 1
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _sub
  addi $sp, $sp, 8
  sw $v0, -8($fp)
  lw $v0, -20($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 1
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _add
  addi $sp, $sp, 8
  sw $v0, -20($fp)
  b loop_for3
exit_loop_for3:
  la $v0, str4
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  lw $v0, -16($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puti
  addi $sp, $sp, 4
  la $v0, str5
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  lw $v0, -12($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puti
  addi $sp, $sp, 4
  la $v0, str6
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
endif2:
ret0:
  addi $sp, $sp, 24
  lw $ra, 0($fp)
  lw $fp, -4($fp)
  jr $ra

.data
str1: .asciiz "======  Calcul du factoriel ======= 
"
str2: .asciiz " Veuillez saisir un entier sup à 1 
"
str3: .asciiz " le factoriel de 0 est ègal à 1 
"
str4: .asciiz " le factoriel de '"
str5: .asciiz "' est égal à "
str6: .asciiz "
"
