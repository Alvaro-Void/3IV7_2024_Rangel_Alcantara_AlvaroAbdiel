Algoritmo Temperatura
	Escribir "Ingresar grados farenheit"
	Leer F
	K=((F-32)*(5/9)) + 273.15
	C= (F-30)*0.555
	R=F+459.67
	
	Mientras i=0 Hacer
		Escribir "Elija que conversión desea realizar:"
		Escribir "1: F a K"
		Escribir "2: F a C"
		Escribir "3: F a R"
		Escribir  "5: salir"
		Leer i
	Fin Mientras
	
	Segun i Hacer
		1:
			Escribir " ", F " F a Kelvin es: ", K
		2:
			Escribir " ", F " F a Celcus es: ", C
		3:
			Escribir " ", F " F a R es: ", R
		4:
			escribir "Vuelva pronto"
	Fin Segun
	
FinAlgoritmo
