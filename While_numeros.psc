//DESARROLLE UN ALGORIMO QUE PERMITA REALIZAR LA ESCRITURA DE LOS PRIMEROS 100 NUMEROS NATURALES UTILIZANDO LA SENTENCIA MIENTRAS. 
Algoritmo While_numeros
	N=0

	Repetir
		Mientras N<>100 Hacer
			N=N+1
			Escribir N
		Fin Mientras
		
		Escribir "Repetir?"
		Escribir "1:Si 2:No"
		Repetir
			Leer V
		Hasta Que V=1 o V=2
	Hasta Que V=2
	
FinAlgoritmo
