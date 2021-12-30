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
  addi $sp, $sp, -20
  sw $ra, 16($sp)
  sw $fp, 12($sp)
  addi $fp, $sp, 16
  li $v0, 1
  sw $v0, -8($fp)
  li $v0, 1
  sw $v0, -12($fp)
  li $v0, 1
  sw $v0, -16($fp)
loop_while1:
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 0
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _sup
  addi $sp, $sp, 8
  beqz $v0, exit_loop_while1
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
  la $v0, str3
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  la $v0, str4
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  la $v0, str5
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  la $v0, str6
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -8($fp)
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 1
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _egal
  addi $sp, $sp, 8
  beqz $v0, else1
  la $v0, str7
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  la $v0, str8
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -12($fp)
  la $v0, str9
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -16($fp)
  la $v0, str10
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  lw $v0, -12($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  lw $v0, -16($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _add
  addi $sp, $sp, 8
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puti
  addi $sp, $sp, 4
  la $v0, str11
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  b endif1
else1:
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 2
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _egal
  addi $sp, $sp, 8
  beqz $v0, else2
  la $v0, str12
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  la $v0, str13
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -12($fp)
  la $v0, str14
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -16($fp)
  la $v0, str15
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  lw $v0, -12($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  lw $v0, -16($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _sub
  addi $sp, $sp, 8
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puti
  addi $sp, $sp, 4
  la $v0, str16
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  b endif2
else2:
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 3
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _egal
  addi $sp, $sp, 8
  beqz $v0, else3
  la $v0, str17
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  la $v0, str18
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -12($fp)
  li $v0, 0
  sw $v0, -16($fp)
loop_while4:
  lw $v0, -16($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 0
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _egal
  addi $sp, $sp, 8
  beqz $v0, exit_loop_while4
  la $v0, str19
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -16($fp)
  b loop_while4
exit_loop_while4:
  la $v0, str20
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  lw $v0, -12($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  lw $v0, -16($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _div
  addi $sp, $sp, 8
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puti
  addi $sp, $sp, 4
  la $v0, str21
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  b endif3
else3:
  lw $v0, -8($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  li $v0, 4
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _egal
  addi $sp, $sp, 8
  beqz $v0, else5
  la $v0, str22
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  la $v0, str23
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -12($fp)
  la $v0, str24
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  jal _geti
  addi $sp, $sp, 0
  sw $v0, -16($fp)
  la $v0, str25
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  lw $v0, -12($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  lw $v0, -16($fp)
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _mul
  addi $sp, $sp, 8
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puti
  addi $sp, $sp, 4
  la $v0, str26
  addi $sp, $sp, -4
  sw $v0, 0($sp)
  jal _puts
  addi $sp, $sp, 4
  b endif5
else5:
endif5:
endif3:
endif2:
endif1:
  b loop_while1
exit_loop_while1:
ret0:
  addi $sp, $sp, 20
  lw $ra, 0($fp)
  lw $fp, -4($fp)
  jr $ra

.data
str1: .asciiz "============= MENU =============
"
str2: .asciiz " '1' -> Faire une Addition 
"
str3: .asciiz " '2' -> Faire une Soustraction 
"
str4: .asciiz " '3' -> Faire une Dévision  
"
str5: .asciiz " '4' -> Faire une Multiplication 
"
str6: .asciiz " '0' -> Quiter 
"
str7: .asciiz " Vous avez choisie l'addition 
"
str8: .asciiz " Veuillez saisir le premier  operand 
"
str9: .asciiz " Veuillez saisir le deuxieme operand 
"
str10: .asciiz "----- le resultat de l'addition ->  "
str11: .asciiz "
"
str12: .asciiz " Vous avez choisie la soustraction 
"
str13: .asciiz " Veuillez saisir le premier  operand 
"
str14: .asciiz " Veuillez saisir le deuxieme operand 
"
str15: .asciiz "------ le resultat de la soustraction ->  "
str16: .asciiz "
"
str17: .asciiz " Vous avez choisie la dévision 
"
str18: .asciiz " Veuillez saisir le premier  operand 
"
str19: .asciiz " Veuillez saisir le deuxieme operand  (!=0) 
"
str20: .asciiz "------ le resultat de la devision ->  "
str21: .asciiz "
"
str22: .asciiz " Vous avez choisie la Multiplication 
"
str23: .asciiz " Veuillez saisir le premier  operand 
"
str24: .asciiz " Veuillez saisir le deuxieme operand 
"
str25: .asciiz "------ le resultat de la Multiplication ->  "
str26: .asciiz "
"
