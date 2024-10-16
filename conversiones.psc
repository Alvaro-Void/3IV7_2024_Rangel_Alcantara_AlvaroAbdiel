Algoritmo conversiones
	Escribir "Ingresar medidas en pies"
	Leer pie
	pul=pie*12
	yar=pie/3
	cm=pie*30.48
	m=pie/3.281
	Mientras i=0 Hacer
		Escribir "Elija que conversión desea realizar:"
		Escribir "1: pies a pulgadas"
		Escribir "2: pies a yardas"
		Escribir "3: pie a centimetro"
		Escribir "4: pie a metro"
		Escribir  "5: salir"
		Leer i
	Fin Mientras
	
	Segun i Hacer
		1:
			Escribir " ", pie " ft a pulgadas es: ", pul
		2:
			Escribir " ", pie " ft a yardas es: ", yar
		3:
			Escribir " ", pie " ft a centimetros es: ", cm
		4:
			Escribir " ", pie " ft a metros es: ", m
		5:
			escribir "Vuelva pronto"
	Fin Segun
	
FinAlgoritmo
