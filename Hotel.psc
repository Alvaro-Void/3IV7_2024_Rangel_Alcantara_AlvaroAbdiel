//Registro de Reservas: El cliente ingresa al sistema, selecciona una habitaci�n y fechas, y se confirma la reserva. 
//	
//Cancelaci�n de Reservas: El cliente puede cancelar una reserva ingresando el n�mero de reserva. 
//	
//Consulta de Disponibilidad: El sistema muestra qu� habitaciones est�n disponibles en las fechas solicitadas. 
//	
//Gesti�n de Ocupaci�n: El administrador puede consultar el porcentaje de ocupaci�n del hotel. 
Algoritmo Hotel
	Definir habitacion, fecha, nreserva Como Entero
	Definir confirmacion Como Caracter
	
	Mientras opcion <>  5 Hacer
		Escribir "1 .- Registro de reservas."
		Escribir "2 .- Cancelaci�n de reservas"
		Escribir "3 .- Disponibilidad."
		Escribir "4 .- Porcentaje de ocupaci�n."
		Escribir "5 .- Salir"
		Leer opcion
		
		Segun opcion Hacer
			Caso 1:
				Escribir "Elija una habitacion del 1 al 5"
				Leer habitacion
				Escribir "Elija la fechas que quiere del 1 al 30 de enero."
				Leer fecha
				Escribir "Confirmar reserva?"
				Escribir "Y/N"
				Leer confirmacion
				Si confirmacion == "Y" Entonces
					nreserva = azar(101)
					Escribir "Su n�mero de reserva es: "
				SiNo
					habitacion=0
					fecha=0
				Fin Si
				
			Caso 2:
				Escribir "Ingrese su n�mero de reserva"
				Leer comprobaci�n
				Si comprobaci�n == nreserva Entonces
					Escribir "Su reserva ha sido cancelada."
					habitacion=0
					fecha=0
				SiNo
					Escribir "El n�mero de reserva es err�neo."
				Fin Si
			Caso 3:
				Si habitacion=1 y fecha<>0 Entonces
					Escribir "Habitaci�n 1 ocupada el ", fecha, " de enero."
					h1=0
				SiNo
					Escribir "Habitaci�n 1 libre"
					h1=1
				Fin Si
				Si habitacion=2 y fecha<>0 Entonces
					Escribir "Habitaci�n 2 ocupada el ", fecha, " de enero."
					h2=0
				SiNo
					Escribir "Habitaci�n 2 libre"
					h2=1
				Fin Si
				Si habitacion=3 y fecha<>0 Entonces
					Escribir "Habitaci�n 3 ocupada el ", fecha, " de enero."
					h3=0
				SiNo
					Escribir "Habitaci�n 3 libre"
					h3=1
				Fin Si
				Si habitacion=4 y fecha<>0 Entonces
					Escribir "Habitaci�n 4 ocupada el ", fecha, " de enero."
					h4=0
				SiNo
					Escribir "Habitaci�n 4 libre"
					h4=1
				Fin Si
				Si habitacion=5 y fecha<>0 Entonces
					Escribir "Habitaci�n 5 ocupada el ", fecha, " de enero."
					h5=0
				SiNo
					Escribir "Habitaci�n 5 libre"
					h5=1	
				Fin Si
			Caso 4:
				hlibres= h1+h2+h3+h4+h5
				porcentaje= (hlibres*100)/5
				Escribir "El ",porcentaje "% del hotel est� ocupado"
		Fin Segun
	Fin Mientras
	
FinAlgoritmo
