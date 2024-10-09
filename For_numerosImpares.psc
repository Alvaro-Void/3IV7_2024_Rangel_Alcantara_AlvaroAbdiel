//MODIFICA EL ALGORITMO ANTERIOR PARA QUE SÓLO MUESTRE LOS NÚMEROS IMPARES. 
Algoritmo For_numerosImpares
	
	Repetir
		Para N=0 Hasta 100 Hacer
			Si N%2>0 Entonces
				Escribir N
			Fin Si
		Fin Para
		
		Escribir "Repetir?"
		Escribir "1:Si 2:No"
		Repetir
			Leer V
		Hasta Que V=1 o V=2
	Hasta Que V=2
FinAlgoritmo
