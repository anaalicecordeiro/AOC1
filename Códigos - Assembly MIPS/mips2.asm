#Programa para imprimir apenas um caractere 
.data
	#caractere -> nome da vari�vel; .byte -> tipo da vari�vel; 'A' -> caractere a ser impresso 
	caractere: .byte 'A'  
.text 
	li $v0, 4 #instru��o para imprimir char ou string 
	la $a0, caractere # la (load adress) para colocar no registrador a0 (que no caso � caractere) 
	                  # o que precisa ser impresso pelo syscall 
	syscall  