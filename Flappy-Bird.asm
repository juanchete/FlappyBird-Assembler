.data
	.space 10240
	blue: .word 0x17b8dd
	yellow: .word 0xf0e901
	white: .word 0xffffff
	darkyellow: .word 0xe6c500
	orange: .word 0xfe8404
	mensaje: .asciiz "¿Desea volver a jugar?"
	mensaje2: .asciiz "Estas en pausa"
	verde1: .word 0x1b5320
	verde2: .word 0x2e7d32
	verde3: .word 0x388e3c
	verde4: .word 0x43a047
	verde5: .word 0x4caf50
	base1: .word 0x10000000
	puntos: .asciiz "Perdiste, La cantidad de puntos fue: "
	negro: .word 0x000000
	
.text

.eqv base, 0x10000000

#---------------------------------------------------------Variables----------------------------------------------------------------
# $t0=Usada-Macro-PintarPixel $t1=Color $t2=OCUPADA $t3=DISPONIBLE $t4=DISPONIBLE $t5=DISPONIBLE $t6=Ocupado $t7=Ocupado $t8=Ocupado $t9=POsicion Pajaro 
#$s0= Usada $s1=Ocupado $s2=DISPONIBLE $s3=Usada-MacroPintarPajaro $s4=DISPONIBLE $s5=DISPONIBLE $s6=DISPONIBLE $s7=DISPONIBLE 

#---------------------------------------------------------Macros-------------------------------------------------------------------
.macro pintarPixel(%pos,%color)
la $t0,(%pos)
addi $t0,$t0,4
sw %color,base($t0)
.end_macro

.macro pintarPajaro(%pos)

#Coloreando pixels negros por lineas
	#Posicion inicial 32376
	la $s3,(%pos)
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,484
	#2da linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,20
	pintarPixel($s3,$zero)
	addi $s3,$s3,8
	pintarPixel($s3,$zero)
	addi $s3,$s3,476
	#3era linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,24
	pintarPixel($s3,$zero)
	addi $s3,$s3,16
	pintarPixel($s3,$zero)
	addi $s3,$s3,464
	#4ta linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,20
	pintarPixel($s3,$zero)
	addi $s3,$s3,12
	pintarPixel($s3,$zero)
	addi $s3,$s3,8
	pintarPixel($s3,$zero)
	addi $s3,$s3,456
	#5ta linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,20
	pintarPixel($s3,$zero)
	addi $s3,$s3,16
	pintarPixel($s3,$zero)
	addi $s3,$s3,12
	pintarPixel($s3,$zero)
	addi $s3,$s3,8
	pintarPixel($s3,$zero)
	addi $s3,$s3,456
	#6ta linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,24
	pintarPixel($s3,$zero)
	addi $s3,$s3,16
	pintarPixel($s3,$zero)
	addi $s3,$s3,16
	pintarPixel($s3,$zero)
	addi $s3,$s3,456
	#7ma linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,24
	pintarPixel($s3,$zero)
	addi $s3,$s3,20
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,456
	#8va linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,16
	pintarPixel($s3,$zero)
	addi $s3,$s3,20
	pintarPixel($s3,$zero)
	addi $s3,$s3,24
	pintarPixel($s3,$zero)
	addi $s3,$s3,456
	#9na linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,20
	pintarPixel($s3,$zero)
	addi $s3,$s3,8
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,468
	#10ma linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,24
	pintarPixel($s3,$zero)
	addi $s3,$s3,20
	pintarPixel($s3,$zero)
	addi $s3,$s3,472
	#11va linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,20
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,480
	#12va linea
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	addi $s3,$s3,4
	pintarPixel($s3,$zero)
	subi $s3,$s3,5136
	#Fin de pixeles negros
	#Pixeles amarillos ordenados por linea
	#2da linea
	li $t1,0xf0e901
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,492
	#3era linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,500
	#4ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,504
	#5ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,508
	#6ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,480
	#7ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,16
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,480
	#8va linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,496
	#Fin pixeles amarillos
	#Pixeles amarillos oscuros ordenados por linea
	#9na linea
	li $t1,0xe6c500
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,500
	#10ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,504
	#11va linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	sub $s3,$s3,4604
	#Fin pixeles amarillos oscuros
	#pixeles blancos
	#2da linea
	li $t1,0xffffff
	pintarPixel($s3,$t1)
	addi $s3,$s3,508
	#3era linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,504
	#4ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,464
	#5ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,24
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,464
	#6ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,24
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,468
	#7ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,540
	#Fin de pixeles blancos
	#Comienzo pixeles naranjas
	#8va linea
	li $t1,0xfe8404
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4	
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,492
	#9na linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,516
	#10ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	#addi $s5,$s5,1
	

.end_macro

.macro borrarPajaro (%pos)

#Posicion inicial 32376
	li $t1,0x17b8dd
	la $s3,(%pos)
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,484
	#2da linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,20
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,476
	#3era linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,24
	pintarPixel($s3,$t1)
	addi $s3,$s3,16
	pintarPixel($s3,$t1)
	addi $s3,$s3,464
	#4ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,20
	pintarPixel($s3,$t1)
	addi $s3,$s3,12
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,456
	#5ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,20
	pintarPixel($s3,$t1)
	addi $s3,$s3,16
	pintarPixel($s3,$t1)
	addi $s3,$s3,12
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,456
	#6ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,24
	pintarPixel($s3,$t1)
	addi $s3,$s3,16
	pintarPixel($s3,$t1)
	addi $s3,$s3,16
	pintarPixel($s3,$t1)
	addi $s3,$s3,456
	#7ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,24
	pintarPixel($s3,$t1)
	addi $s3,$s3,20
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,456
	#8va linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,16
	pintarPixel($s3,$t1)
	addi $s3,$s3,20
	pintarPixel($s3,$t1)
	addi $s3,$s3,24
	pintarPixel($s3,$t1)
	addi $s3,$s3,456
	#9na linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,20
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,468
	#10ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,24
	pintarPixel($s3,$t1)
	addi $s3,$s3,20
	pintarPixel($s3,$t1)
	addi $s3,$s3,472
	#11va linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,20
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,480
	#12va linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	subi $s3,$s3,5136
	#Fin de pixeles negros
	#Pixeles amarillos ordenados por linea
	#2da linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,492
	#3era linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,500
	#4ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,504
	#5ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,508
	#6ta line
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,480
	#7ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,16
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,480
	#8va linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,496
	#Fin pixeles amarillos
	#Pixeles amarillos oscuros ordenados por linea
	#9na linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,500
	#10ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,504
	#11va linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	sub $s3,$s3,4604
	#Fin pixeles amarillos oscuros
	#pixeles blancos
	#2da linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,508
	#3era linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,504
	#4ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,464
	#5ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,24
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,8
	pintarPixel($s3,$t1)
	addi $s3,$s3,464
	#6ta linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,24
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,468
	#7ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,540
	#Fin de pixeles blancos
	#Comienzo pixeles naranjas
	#8va linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4	
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,492
	#9na linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,516
	#10ma linea
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)
	addi $s3,$s3,4
	pintarPixel($s3,$t1)

.end_macro 

.macro dibujarTubo ($pos, $random)
	
	#registra la linea de abajo de donde empieza la base
	#para asi saber cuandos se hace la validacion de pasar a la siguiebte fila
	lw $t3, base1
	addi $t3, $t3,512
	#guarda la primera posicion de donde se dibuja el tubo
	#para despues dibujar las lineas de color verde hotizontales
	move $s6, $pos
	move $t4, $s6 #en este registro se haran la validaciones para pintar la linea ya que cambiara
	
	
	
	

	#no es reusable
	#esto cambia dependiendo del numero random
	#dice desde cuando se va a hacer el hueco
	
	
	
	
	
	#fin tubo arriba
	#dependiendo del numero radnom se hace la posicion de s3 diferente
	lw $s3, base1
	addi $s3, $s3, 22528 #este numero cambia dependiendo del tubo
	beq $random, 1, continuar
	lw $s3, base1
	addi $s3, $s3, 5000 #este numero cambia dependiendo del tubo
	beq $random, 2, continuar
	lw $s3, base1
	addi $s3, $s3, 13764 #este numero cambia dependiendo del tubo
	beq $random, 3, continuar
	lw $s3, base1
	addi $s3, $s3, 37000 #este numero cambia dependiendo del tubo
	beq $random, 4, continuar
	lw $s3, base1
	addi $s3, $s3, 29764 #este numero cambia dependiendo del tubo
	
	
	
continuar:	

	#reusable
	#inicio tubo abajo
	li $s4,0
	addi $s4, $s3,22528 #depende el primero ($s3) y marca el inicio del tubo de abajo
	
	#le asigna a s2 el valor de la primera posicion de donde se dibuja el tubo para hacer las validaciones
	li $s2,0
	add $s2,$s2,$pos
	
	

	#pinta la parte de arriba del tubo
loopInicio:
	
	
	
	#si la posicion esta en la direccion en donde estan las lineas horizontales del 
	#tubo entonces va a pintar linea verde
	#cambia dependiendo del tubo que se pone
	
	
	bne $random,1, tubo2
	addi $t4, $t4, 21504
	beq $pos,$t4, lineaH
	addi $t4, $t4, -21504
	addi $t4, $t4, 18944
	beq $pos,$t4, lineaH
	addi $t4, $t4, -18944		
	addi $t4, $t4, 44544
	beq $pos,$t4, lineaH
	addi $t4, $t4, -44544
	addi $t4, $t4, 47104
	beq $pos,$t4, lineaH
	addi $t4, $t4, -47104

tubo2:
	bne $random,2, tubo3
	addi $t4, $t4, 2048
	beq $pos,$t4, lineaH
	addi $t4, $t4, -2048
	addi $t4, $t4, 4608
	beq $pos,$t4, lineaH
	addi $t4, $t4, -4608		
	addi $t4, $t4, 26624
	beq $pos,$t4, lineaH
	addi $t4, $t4, -26624
	addi $t4, $t4, 29184
	beq $pos,$t4, lineaH
	addi $t4, $t4, -29184
tubo3:
	bne $random,3, tubo4
	addi $t4, $t4, 13312
	beq $pos,$t4, lineaH
	addi $t4, $t4, -13312
	addi $t4, $t4, 10752
	beq $pos,$t4, lineaH
	addi $t4, $t4, -10752		
	addi $t4, $t4, 35328
	beq $pos,$t4, lineaH
	addi $t4, $t4, -35328
	addi $t4, $t4, 37888
	beq $pos,$t4, lineaH
	addi $t4, $t4, -37888
tubo4:
	bne $random,4, tubo5
	addi $t4, $t4, 34304
	beq $pos,$t4, lineaH
	addi $t4, $t4, -34304
	addi $t4, $t4, 36864
	beq $pos,$t4, lineaH
	addi $t4, $t4, -36864		
	addi $t4, $t4, 58880
	beq $pos,$t4, lineaH
	addi $t4, $t4, -58880
	addi $t4, $t4, 61440
	beq $pos,$t4, lineaH
	addi $t4, $t4, -61440

tubo5:
	bne $random, 5,pasar
	addi $t4, $t4, 29696
	beq $pos,$t4, lineaH
	addi $t4, $t4, -29696
	addi $t4, $t4, 27136
	beq $pos,$t4, lineaH
	addi $t4, $t4, -27136		
	addi $t4, $t4, 51712
	beq $pos,$t4, lineaH
	addi $t4, $t4, -51712
	addi $t4, $t4, 54272
	beq $pos,$t4, lineaH
	addi $t4, $t4, -54272
pasar:
	
	
	
	#si s1 que es la posicion de abajo es mayor a donde empieza el hueco entonces te vas a pintar
	#el tubo de abajo
	bge $t3,$s3,abajo 	#reusable
	
	
	
	
	#pinta el tubo con sus gradientes
	li $t1, 0x1b5320 #verde1
	sw $t1, 0($pos)
	li $t1, 0x388e3c #verde 3
	#La validacion va en todos menos en el primer bit
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 4($pos)
	li $t1, 0x4caf50 #verde 5
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 8($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 12($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 16($pos)
	li $t1, 0x43a047 #verde 4
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 20($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 24($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 28($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 32($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 36($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 40($pos)
	li $t1, 0x43a047
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 44($pos)
	li $t1, 0x388e3c 
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 48($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 52($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 56($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 60($pos)
	li $t1, 0x2e7d32 #verde2
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 64($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 68($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 72($pos)
	li $t1, 0x388e3c
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 76($pos)
	li $t1, 0x1b5320
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 80($pos)
	li $t1, 0x17b8dd #blue
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 84($pos)
	
	b sig
	


	
	#pinta la parte de abajo del tubo
abajo:
	
	#si eres menor de la parte en donde empieza el tubo de abajo entonces no pintas nada
	blt $t3,$s4,sig

	li $t1, 0x1b5320 #verde1
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 0($pos)
	li $t1, 0x388e3c #verde 3
	#La validacion va en todos menos en el primer bit
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 4($pos)
	li $t1, 0x4caf50 #verde 5
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 8($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 12($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 16($pos)
	li $t1, 0x43a047 #verde 4
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 20($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 24($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 28($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 32($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 36($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 40($pos)
	li $t1, 0x43a047
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 44($pos)
	li $t1, 0x388e3c 
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 48($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 52($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 56($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 60($pos)
	li $t1, 0x2e7d32 #verde2
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 64($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 68($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 72($pos)
	li $t1, 0x388e3c
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 76($pos)
	li $t1, 0x1b5320
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 80($pos)
	li $t1, 0x17b8dd #blue
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 84($pos)
	
	b sig
	
	
	#pinta la linea horizontal
lineaH:
	
	li $t1, 0x1b5320
	sw $t1, 0 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 4 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 8 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 12 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 16($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 20 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 24 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 28 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 32 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 36 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 40 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 44 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 48 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 52 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 56 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 60 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 64 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 68 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 72 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 76 ($pos)
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 80 ($pos)
	li $t1, 0x17b8dd
#------------------------------VALIDACION---------------------------
	#salta si la posicion siguiente va a la linea de abajo
	addi $s2, $s2, 4
	beq $t3,$s2,sig
#----------------------------------FIN-VALIDACION--------------------
	sw $t1, 84 ($pos)
	
	b sig
	
	


	#completamente reusable	
sig:	
	#vuelve a poner la primera posisicon de memoria
	move $t4, $s6
	addi $t3, $t3,512
	addi $pos,$pos,512
	move $s2, $pos
	
	blt $pos, 268502528, loopInicio # 268502528 numero de la ultima posicion de memoria
	addi $pos, $pos, -67072 #sube la posicion a la parde de arriba
	#addi $s5,$s5,1
	
.end_macro

#pinta la parte de azulde atras para que  no se vea mal
.macro pintarAzul()
	
	li $t3, 0x10000000
	
loopAzul:
	li $t1, 0x17b8dd
	sw $t1, 0 ($t3)
	sw $t1, 4 ($t3)
	sw $t1, 8 ($t3)
	sw $t1, 12 ($t3)
	sw $t1, 16($t3)
	sw $t1, 20 ($t3)
	sw $t1, 24 ($t3)
	sw $t1, 28 ($t3)
	sw $t1, 32 ($t3)
	sw $t1, 36 ($t3)
	sw $t1, 40 ($t3)
	sw $t1, 44 ($t3)
	sw $t1, 48 ($t3)
	sw $t1, 52 ($t3)
	sw $t1, 56 ($t3)
	sw $t1, 60 ($t3)
	sw $t1, 64 ($t3)
	sw $t1, 68 ($t3)
	sw $t1, 72 ($t3)
	sw $t1, 76 ($t3)
	sw $t1, 80 ($t3)
	sw $t1, 84 ($t3)
	
	addi $t3, $t3, 512
	ble $t3, 268500992, loopAzul
	
	
	
.end_macro


#-------------------------------------------Codigo Main-----------------------------------------------------------------------------


	#Colores para dibujar el pajaro
inicio:                 #Comienza el programa
	li $t1,0x17b8dd     #GUardo en T1 el color del fondo
	li $t9,32376    #Indico la posicion incial del pajaro
	li $t0,0        #Indico la posicion 0, para que cuando se reinicie e juego se pueda volver a pintar el fondo chill
	li $t5, 0x10000000 #para usar la posisicon siempre empiezas en la base
	addi $t5, $t5, 420
	li $s5,0
	
loop:
	sw $t1, base($t0)      #Esto Pinta el fondo
	addi $t0, $t0, 4	#ver si se puede cambiar
	blt $t0, 65538, loop
	pintarPajaro($t9)       #Pinta el pajaro en su posicion inicial
	#empieza a pintar el tubo
	
	#Genera el numero random
	li $a1, 5
	li $v0, 42
	syscall
	addi $a0, $a0,1
	move $a3,$a0
	#dibujarTubo($t5, $a0)
	dibujarTubo($t5, $a3)
	
loopCaida:
	li $v0,30          #El tiempo que lleva corrido el programa
	syscall 
	addi $s0,$a0,50    #Guardo en s0 el tiempo que lleva corrido el programa
retardo:
	li $t6,1            #Esto es lo que dijo Sergio que teniamos que guardar en un registro un numero X
	lw $t7,0xffff0000   #Guardo en t7 lo que puso el usuario en el teclado
	li $v0,30      
	syscall 
	blt $a0,$s0,noCaida  #Una comparacion para el Delay
	bge $t9,59492,perder   #Para que muera cuando toque el piso
	lw $s7, 0xffffe00($t9) 	#Choque de la parte superior
	beq $s7,0x1b5320,perder 	#Hago el choque pero no funciona
	lw $s7, 0x10000218($t9) 	#Primer pixel del ojo
	beq $s7,0x1b5320,perder
	lw $s7, 0x1000041C($t9) 	#Segundo pixel del ojo
	beq $s7,0x1b5320,perder
	lw $s7, 0x10000620($t9) 	#Tercer pixel del ojo
	beq $s7,0x1b5320,perder
	lw $s7, 0x10000824($t9) 	#Cuarto pixel del ojo verticales
	beq $s7,0x1b5320,perder
	lw $s7, 0x10000E28($t9) 	#Pixel arriba de la boca
	beq $s7,0x1b5320,perder
	lw $s7, 0x1000102C($t9) 	#Pixel de la boca negro mas afuera
	beq $s7,0x1b5320,perder
	lw $s7, 0x10001228($t9) 	#Pixel de la fila 9 de la boca 
	beq $s7,0x1b5320,perder
	lw $s7, 0x10001628($t9) 	#Pixel de la fila 11 de la boca 
	beq $s7,0x1b5320,perder
	lw $s7, 0x10001620($t9) 	#Pixel de la fila 11 de la boca 
	beq $s7,0x1b5320,perder
	lw $s7, 0x10001814($t9) 	#Pixel de la fila 12 de abajo 
	beq $s7,0x1b5320,perder
	lw $s7, 0x10001804($t9) 	#Pixel de la fila 12 del extremo 
	beq $s7,0x1b5320,perder
	lw $s7, 0x10001600($t9) 	#Pixel de la fila 11 
	beq $s7,0x1b5320,perder
	lw $s7, 0x100015FC($t9) 	#Pixel de la fila 11 
	beq $s7,0x1b5320,perder
	lw $s7, 0x100013F8($t9) 	#Pixel de la fila 10
	beq $s7,0x1b5320,perder
	lw $s7, 0x100011F0($t9) 	#Pixel de la fila 9 donde puede chocar mas al extremo
	beq $s7,0x1b5320,perder
	lw $s7, 0x10000FEC($t9) 	#Pixel de la fila 8
	beq $s7,0x1b5320,perder
	lw $s7, 0x10000DE8($t9) 	#Pixel de la fila 7
	beq $s7,0x1b5320,perder
	lw $s7, 0x100009E8($t9) 	#Pixel de la fila 5
	beq $s7,0x1b5320,perder
	lw $s7, 0x100009EC($t9) 	#Pixel de la fila 4
	beq $s7,0x1b5320,perder
	lw $s7, 0x100009F0($t9) 	#2do Pixel de la fila 4
	beq $s7,0x1b5320,perder
	lw $s7, 0x100007F4($t9) 	#Pixel fila 3
	beq $s7,0x1b5320,perder
	lw $s7, 0x100005F8($t9) 	#Pixel fila 2
	beq $s7,0x1b5320,perder
	lw $s7, 0x100005FC($t9) 	#2do Pixel fila 2
	beq $s7,0x1b5320,perder
	
	
	
	
	


	
	
	
	move $s1,$t9		#Muevo a S1 la posicion del pajaro
	borrarPajaro($s1)       #Borro el pajaro
	addi $t9,$t9,512        #Le sumo 512 al pajaro
	move $s1,$t9            #Muevo a S1 la direccion del pajaro
	pintarPajaro($s1)       #Pinto el pajaro en su nueva direccion
	#Mueve el tubo y hace la validacion para moverlo a la derecha
	addi $t5,$t5,-4
	#dibujarTubo($t5, $a0)
	dibujarTubo($t5, $a3)
	
		
	bne $t5, 268435456 ,sigue
		
		
	addi $s5,$s5,1	
	addi $t5, $t5, 512
	li $a1, 5
	li $v0, 42
	syscall
	addi $a0, $a0,1
	move $a3,$a0
	pintarAzul()
		
		
	sigue:
	
	li $v0, 30              
	addi $s0,$a0,50
noCaida:
	bne $t7,1,retardo     #Si en el teclado no hubo interaccion se va a retardo
	lw $t8, 0xffff0004    #Se guarda en t8 el caracter que metio el usuario
	beq $t8,32, salto     #Si es barra espaciadora va a salto
	beq $t8,112,pausa     #Si es la letra p va a pausa
	b loopCaida
	
	salto:
		
		move $s1,$t9             #Se mueve a s1 la direccion
		addi $t9,$t9,-3072       #Se le resta a la direccion para que suba
		ble $t9,100,perder       #Hago esta comparacion primero antes de pintar y borrar a ver si el pajaro muere
		borrarPajaro($s1)	 #Borro el pajaro en su posicion orignal en que estaba
		move $s1,$t9		 #Muevo a S1 la nueva posicion del pajaro
		pintarPajaro($s1)	 #Pinto el pajaro en su nueva posicion
		b retardo
		
pausa:
	li $v0,55
	la $a0,mensaje2
	la $a1,1
	syscall
	b loopCaida
		
perder:
	li $v0,56
	la $a0,puntos
	la $a1,($s5)
	syscall
	li $v0,50			#Aca hago el siscall 50 que me pregunta si quiero volver a jugar 
	la $a0,mensaje
	syscall 
	beqz $a0,inicio			#Si la respuesta es si salta a inicio y se reinicia
	li $v0,10
	syscall
 
	 
	#512x512 pixels --> 128x128 palabras unidad 4x4
	#ultima Pos = 128*128*4 = 65538 
	#mitad pos = 128*64*4 = 32768
	#Pos cualquiera= 4x+512y
	#mitad = 4(35)+512(63) = 32396
	
	
	
