Algoritmo sin_titulo
	neg=0
	pos=0
	Repetir
		Escribir "Cantidad de números:"
		Leer N
		
		Para i=0 Hasta N Hacer
			Escribir "Ingresar números"
			Leer s
			Si s<=0 Entonces
				neg=neg+1
			SiNo
			pos=pos+1
			Fin Si
		Fin Para
		
		Escribir "Desea repetir el proceso?"
		Leer R
	Hasta Que R=1
	
	
FinAlgoritmo
