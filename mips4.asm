.data
	txt1: .asciiz"Digite o valor do salário: "
	txt2: .asciiz"Salário atualizado: R$"
.text
main:
	li $v0, 4
	la $a0, txt1
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	mul $t2, $t1, 25
	div $t2, $t2, 100
	add $t1, $t1, $t2
	
	
	li $v0, 4
	la $a0, txt2
	syscall
	
	li $v0, 1
	mul $a0, $t1, 1
	syscall
	
	