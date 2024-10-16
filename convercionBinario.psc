Algoritmo sin_titulo
	Definir num, residuo Como Entero
	Definir binario como texto
	//el binario lo tengo que concatenar
	binario= ""
	
	Escribir "Ingresa el numero que deseas convertir"
	Leer num
	
	si num >= 0 Entonces
		//aqui esta la condicion para numeros positivos
		Mientras num > 0  Hacer
			residuo=num%2
			//tengo que armar el binario
			nuevobinario = ConvertirATexto(residuo)
			//concatenar los elementos de texto
			binario= nuevobinario + binario
			
			num=trunc(num/2)
		FinMientras
		//si el numero es 0
		si binario="" Entonces
			binario="0"
		FinSi
		Escribir "El numero binario es: ",binario
	FinSi
	
FinAlgoritmo
