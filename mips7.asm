.data
	txt1: .asciiz"Digite um valor entre 100 e 999: "
	txt2: .asciiz"impossível: "
	centena: .asciiz"\nCentena: "
	dezena: .asciiz"\nDezena: "
	unidade: .asciiz"\nUnidade: "
.text
main:
	li $v0, 4
	la $a0, txt1
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	ble $t1, 100, main
	j verificar
	verificar:
	bge $t1, 999, main
	j entao
	entao: 
	
	div $t2, $t1, 100
	rem $t3, $t1, 100
	
	bgt $t3, $t2, lentao
	j lsenao
	lentao:
	
	div $t4, $t3, 10
	rem $t3, $t3, 10
	
	bgt $t3, $t2, jlentao
	j jlsenao
	jlentao:
	
	div $t5, $t3, 1
	rem $t3, $t5, 1
	
	bgt $t3, $t2, jlkentao
	j jlksenao
	jlkentao:
	li $v0, 4
	la $a0, txt2
	syscall
	j fimse
	jlksenao: 
	j fimse
	jlsenao:
	j fimse
	lsenao:
	j fimse
	fimse:
	
	li $v0, 4
	la $a0, centena
	syscall
	
	li $v0, 1
	mul $a0, $t2, 1
	syscall
	
	li $v0, 4
	la $a0, dezena
	syscall
	
	li $v0, 1
	mul $a0, $t4, 1
	syscall
	
	li $v0, 4
	la $a0, unidade
	syscall
	
	li $v0, 1
	mul $a0, $t5, 1
	syscall
	
	
	
	