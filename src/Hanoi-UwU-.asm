

.data
	Torre1: .word 8 7 6 5 4 3 2 1   # Vector in Memory
	Torre2: .word 0 0 0 0 0 0 0 0	# Vector in Memory
	Torre3: .word 0 0 0 0 0 0 0 0   # Vector in Memory

.text
##########################################################################################
	addi $s0, $zero, 8 	     	# Numero de discos C                  		 #
##########################################################################################
	addi $s1, $zero, 0x01001001C 	# Se asigna la direccion de la Torre origen	 #
##########################################################################################
	addi $s2, $zero, 0x010010040 	# Se asigna la direccion de la Torre auxiliar
	addi $s3, $zero, 0x010010080 	# Se asigna la direccion de la Torre destino

Hanoi:	bne  $s0, 1, Else    # Si el numero de discos no es 1 va a la funcion Else
	lw   $t1    ($s1)    # t1 toma el valor que esta en la direccion a la que apunta s1
	sw   $zero  ($s1)    # Se coloca un 0 en la posicion de s1 para indicar que esta vacia
	sw   $t1    ($s3)    # Se coloca el disco en la parte mas alta de la torre 3

	jr   $ra     # Regresa a la funcion que la llama
	j    Exit    # Salta a la salida del programa

Else:   addi $sp, $sp, -8    # Reserva memoria para guardar el numero de discos (s0) y la direccion de retorno (ra)
	sw   $s0,  4($sp)    # Almacena el valor de s0 (numero de discos)
	sw   $ra,  0($sp)    # Almacena el valor de ra (direccion de retorno)

	addi $s0, $s0, -1    # Disminuye el valor del disco

	# Intercambia los valores de s2 (torre auxiliar) y s3 (torre destino) con ayuda de una variable temporal (t1)
	add $t1,$s2,$zero
	add $s2,$s3,$zero
	add $s3,$t1,$zero

	jal Hanoi    # Llama a la funcion Hanoi

	# Intercambia los valores de s2 (torre auxiliar) y s3 (torre destino) con ayuda de una variable temporal (t1)
	add $t1,$s2,$zero
	add $s2,$s3,$zero
	add $s3,$t1,$zero

	addi $s1, $s1, -4    # s1 apuntara a su direccion anterior
	lw   $t1 ($s1) 	     # t1 toma el valor que esta en la direccion a la que apunta s1
	sw   $zero($s1)	     # Se coloca un 0 en la posicion de si para indicar que esta vacia
	sw   $t1 ($s3)	     # Se coloca el disco en la parte mas alta de la torre 3
	addi $s3, $s3,  4    # s3 apuntara a su direccion superior

	# Intercambia los valores de s2 (torre auxiliar) y s1 (torre origen) con ayuda de una variable temporal (t1)
	add $t1,$s1,$zero
	add $s1,$s2,$zero
	add $s2,$t1,$zero

	jal Hanoi    # Llama a la funcion Hanoi

	# Intercambia los valores de s2 (torre auxiliar) y s1 (torre origen) con ayuda de una variable temporal (t1)
	add $t1,$s1,$zero
	add $s1,$s2,$zero
	add $s2,$t1,$zero

 	lw   $ra,  0($sp)    # ra recupera el valor que tenia al entrar a la funcion
	lw   $s0,  4($sp)    # s0 recupera el valor que tenia al entrar a la funcion
	addi $sp, $sp, 8     # El stack pointer vuelve a apuntar a la direccion que tenia al entrar a la funcion

	jr   $ra    # Regresa a la funcion que la llama

Exit: # Fin del programa
