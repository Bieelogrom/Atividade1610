.data
	txt1: .asciiz"Digite seu mês de nascimento: "
	txt2: .asciiz"Digite seu ano de nascimento: "
	txt3: .asciiz"Digite o mês atual: "
	txt4: .asciiz"Digite o ano atual: "
	txt5: .asciiz"Sua idade em meses: "
.text
main:
	li $v0, 4
	la $a0, txt1
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, txt2
	syscall
	
	li $v0, 5
	syscall
	
	mul $t2, $v0, 1
	
	li $v0, 4
	la $a0, txt3
	syscall
	
	li $v0, 5
	syscall
	
	mul $t3, $v0, 1
	
	li $v0, 4
	la $a0, txt4
	syscall
	
	li $v0, 5
	syscall
	
	mul $t4, $v0, 1
	
	sub $t4, $t4, $t2
	mul $t4, $t4, 12
	
	sub $t3, $t3, $t1
	add $t4, $t4, $t3
	
	sub $t4, $t4, 1
	
	li $v0, 4
	la $a0, txt5
	syscall
	
	li $v0, 1
	mul $a0, $t4, 1
	syscall
	
	
	