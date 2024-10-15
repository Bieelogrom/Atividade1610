.data
	txt1: .asciiz"Digite o primeiro valor: "
	txt2: .asciiz"Digite o segundo valor: "
	txt3: .asciiz"Valores iguais!"
	maior: .asciiz"\nMaior: "
	menor: .asciiz"\nMenor: "
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
	
	beq $t1, $t2, entao
	j senao
	entao:
	li $v0, 4
	la $a0, txt3
	syscall
	j fimse
	senao:
	bgt $t1, $t2, nentao
	j nsenao
	nentao:
	li $v0, 4
	la $a0, maior
	syscall
	
	li $v0, 1
	mul $a0, $t1, 1
	syscall
	
	li $v0, 4
	la $a0, menor
	syscall
	
	li $v0, 1
	mul $a0, $t2, 1
	syscall
	
	j fimse
	nsenao:
	li $v0, 4
	la $a0, maior
	syscall
	
	li $v0, 1
	mul $a0, $t2, 1
	syscall
	
	li $v0, 4
	la $a0, menor
	syscall
	
	li $v0, 1
	mul $a0, $t1, 1
	syscall
	
	fimse:
	
	