.data
	txt1: .asciiz"Digite o valor em US$: "
	txt2: .asciiz"Valor convertido em R$: "
.text
main:
	li $v0, 4
	la $a0, txt1
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	mul $t1, $t1, 5
	
	li $v0, 4
	la $a0, txt2
	syscall 
	
	li $v0, 1
	add $a0, $t1, 0
	syscall