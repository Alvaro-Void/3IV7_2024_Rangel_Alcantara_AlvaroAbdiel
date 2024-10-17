	//vamos a crear un programa para calcular areas y perimetros
	//pero con el uso de subprocesos
	
	//vamos a crear el subproceso del rectangulo
	//Argumento: Requerimiento para poder hacer una accion
	
	SubProceso Rectangulo(base, altura)
		Definir area, perimetro Como Real
		area= base*altura
		perimetro=2*(base+altura)
		Escribir "El area del rectangulo es: ", area
		Escribir "El perimetro del rectangulo es: ", perimetro
	FinSubProceso

	SubProceso Triangulo(base, altura, lado1, lado2, lado3)
		Definir area, perimetro Como Real
		area= base*altura
		perimetro=lado1+lado2+lado3
		Escribir "El area del triangulo es: ", area
		Escribir "El perimetro del triangulo es: ", perimetro
	FinSubProceso

	//tarea

	SubProceso Cuadrado(lado)
		Definir area, perimetro Como Real
		area= lado*2
		perimetro= lado*4
		Escribir "El area del cuadrado es: ", area
		Escribir "El perimetro del cuadrado es: ", perimetro
	FinSubProceso

	SubProceso Pentagono(lado, apotema)
		Definir area, perimetro Como Real
		perimetro=lado*5
		area=(perimetro*apotema)/2
		Escribir "El area del pentagono es: ", area
		Escribir "El perimetro del pentagono es: ", perimetro
	FinSubProceso
	
	SubProceso Hexagono(lado, apotema)
		Definir area, perimetro Como Real
		perimetro=lado*6
		area=(perimetro*apotema)/2
		Escribir "El area del hexagono es: ", area
		Escribir "El perimetro del hexagono es: ", perimetro
	FinSubProceso
	
	SubProceso Heptagono(lado, apotema)
		Definir area, perimetro Como Real
		perimetro=lado*7
		area=(perimetro*apotema)/2
		Escribir "El area del heptagono es: ", area
		Escribir "El perimetro del heptagono es: ", perimetro
	FinSubProceso
	
	SubProceso Octagono(lado, apotema)
		Definir area, perimetro Como Real
		perimetro=lado*8
		area=(perimetro*apotema)/2
		Escribir "El area del octagono es: ", area
		Escribir "El perimetro del octagono es: ", perimetro
	FinSubProceso

	SubProceso Nonagono(lado, apotema)
		Definir area, perimetro Como Real
		perimetro=lado*9
		area=(perimetro*apotema)/2
		Escribir "El area del nonágono es: ", area
		Escribir "El perimetro del nonágono es: ", perimetro
	FinSubProceso


Algoritmo CalculadoradeFiguras
	Definir opcion Como Caracter
	Definir base, altura, lado1, lado2, lado3, lado, apotema Como Real
	//vamos a crear el menú
	Escribir "Selecciona una opcion: "
	Escribir "A Area y Perimetro del Rectangulo"
	Escribir "B Area y Perimetro del Triangulo"
	Escribir "C Area y Perimetro del Cuadrado"
	Escribir "D Area y Perimetro del Pentagono"
	Escribir "E Area y Perimetro del Hexagono"
	Escribir "F Area y Perimetro del Heptagono"
	Escribir "G Area y Perimetro del Octagono"
	Escribir "H Area y Perimetro del Nonágono"
	
	Leer opcion
	
	Segun opcion hacer
		//para el caso 1
		Caso "A":
			Escribir "Ingresa la base del rectangulo"
			Leer base
			Escribir "Ingresa la altura del rectangulo"
			Leer altura
			Rectangulo(base, altura)
			
		Caso "B":	
			Escribir "Ingresa la base del triangulo"
			Leer base
			Escribir "Ingresa la altura del triangulo"
			Leer altura
			Escribir "Ingresa lado1"
			Leer lado1
			Escribir "Ingresa lado2"
			Leer lado2
			Escribir "Ingresa lado3"
			Leer lado3
			Triangulo(base, altura,lado1,lado2, lado3)
			
		Caso "C":
			Escribir "Ingresa el lado del cuadrado"
			Leer lado
			Cuadrado(lado)
			
		Caso "D":
			Escribir "Ingresa el lado del pentagono"
			Leer lado
			Escribir "Ingresa la apotema del pentagono"
			Leer apotema
			Pentagono(lado, apotema)
			
		Caso "E":
			Escribir "Ingresa el lado del hexagono"
			Leer lado
			Escribir "Ingresa la apotema del hexagono"
			Leer apotema
			Hexagono(lado, apotema)
			
		Caso "F":
			Escribir "Ingresa el lado del heptagono"
			Leer lado
			Escribir "Ingresa la apotema del heptagono"
			Leer apotema
			Heptagono(lado, apotema)
			
		Caso "G":
			Escribir "Ingresa el lado del octagono"
			Leer lado
			Escribir "Ingresa la apotema del octagono"
			Leer apotema
			Octagono(lado, apotema)
			
		Caso "H":
			Escribir "Ingresa el lado del nonágono"
			Leer lado
			Escribir "Ingresa la apotema del nonágono"
			Leer apotema
			Nonagono(lado, apotema)
			
		De Otro Modo:
			Escribir "Opcion no valida"
	FinSegun
	
FinAlgoritmo
	