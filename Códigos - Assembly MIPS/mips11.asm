# Implementar um programa que l� um float e o imprime 
.data
	msg: .asciiz "Forne�a um n�mero decimal: "
	zero: .float 0.0

.text
	#imprimindo a mensagem ao usu�rio 
	li $v0, 4 #instru��o para imprimir uma string
	la $a0, msg #dado um load adress, para o conte�do de msg ir para o registrador $a0 para ser impresso 
	syscall 
	
	#lendo o n�mero
	li $v0, 6 #instru��o para ler um float
	syscall #valor lido estar� em $f0 
	
	
	lwc1 $f1, zero #o registrador $f1 tem o valor 0 agora
	add.s $f12, $f1, $f0         
	
	#imprimindo o n�mero 
	li $v0, 2
	syscall 