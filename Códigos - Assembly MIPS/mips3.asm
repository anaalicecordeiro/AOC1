#Programa para imprimir um inteiro 
.data 
	#idade - vari�vel; .word - tipo da vari�vel; 56 - o valor inteiro armaazenado na mem�ria RAM
	idade: .word 56
.text 
	li $v0, 1 #instru��o para imprimir um inteiro 
	lw $a0, idade #load word (lw - usado para inteiros) � respons�vel por ir no endere�o onde est� a vari�vel idade pegar o 
	              # valor nesse endere�o e colocar no registrador a0
	syscall 