Algoritmo AsignarCalificaciones
	calificacion<-0
	
	Escribir "Escriba una calificacion númerica para asignar una letra"
	Leer calificacion
	
	Si calificacion > 20 o calificacion < 1 Entonces
		Escribir "Calificación no válida"
	SiNo
		Si calificacion >= 19 y calificacion <= 20 Entonces
			Escribir "A"
		SiNo
			Si calificacion >= 16 y calificacion <= 18 Entonces
				Escribir "B"
			SiNo
				Si calificacion >= 13 y calificacion <= 15 Entonces
					Escribir "C"
				SiNo
					Si calificacion >= 10 y calificacion <= 12 Entonces
						Escribir "D"
					SiNo
						Escribir "E"
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	
FinAlgoritmo
