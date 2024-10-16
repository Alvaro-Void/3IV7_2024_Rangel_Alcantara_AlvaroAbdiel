Algoritmo sin_titulo
		Definir a, b, c, discriminante, raiz1, raiz2 Como Real
		Definir tipoRaiz Como Cadena
		
		Escribir "Ingrese el valor de a:"
		Leer a
		Escribir "Ingrese el valor de b:"
		Leer b
		Escribir "Ingrese el valor de c:"
		Leer c
		
		discriminante := b * b - 4 * a * c
		
		Si discriminante > 0 Entonces
			tipoRaiz := "Dos raíces reales y diferentes"
			raiz1 := (-b + Raiz(discriminante)) / (2 * a)
			raiz2 := (-b - Raiz(discriminante)) / (2 * a)
			Escribir "Las resultados son: ", raiz1, " y ", raiz2
		Sino
			Si discriminante = 0 Entonces
				tipoRaiz := "Una raíz real doble"
				raiz1 := -b / (2 * a)
				Escribir "La raíz es: ", raiz1
			Sino
				tipoRaiz := "No hay raíces reales"
				Escribir "La ecuación no tiene raíces reales."
			FinSi
		FinSi
		
		Escribir "Tipo de raíces: ", tipoRaiz
FinAlgoritmo
