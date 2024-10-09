//DESARROLLE UN ALGORITMO QUE REALICE LA SUMATORIA DE LOS NÚMEROS ENTEROS COMPRENDIDOS ENTRE EL 1 Y EL 10.
Algoritmo Suma_10numeros
	Repetir
		suma=0
		Para n=0 Hasta 10 Hacer
			suma=suma+n
			Escribir suma
		Fin Para
		
		Escribir "Repetir?"
		Escribir "1:Si 2:No"
		Repetir
			Leer V
		Hasta Que V=1 o V=2
	Hasta Que V=2
FinAlgoritmo
