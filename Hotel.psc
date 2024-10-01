//Registro de Reservas: El cliente ingresa al sistema, selecciona una habitación y fechas, y se confirma la reserva. 
//	
//Cancelación de Reservas: El cliente puede cancelar una reserva ingresando el número de reserva. 
//	
//Consulta de Disponibilidad: El sistema muestra qué habitaciones están disponibles en las fechas solicitadas. 
//	
//Gestión de Ocupación: El administrador puede consultar el porcentaje de ocupación del hotel. 
Algoritmo Hotel
	Definir habitacion, fecha, nreserva Como Entero
	Definir confirmacion Como Caracter
	
	Mientras opcion <>  5 Hacer
		Escribir "1 .- Registro de reservas."
		Escribir "2 .- Cancelación de reservas"
		Escribir "3 .- Disponibilidad."
		Escribir "4 .- Porcentaje de ocupación."
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
					Escribir "Su número de reserva es: "
				SiNo
					habitacion=0
					fecha=0
				Fin Si
				
			Caso 2:
				Escribir "Ingrese su número de reserva"
				Leer comprobación
				Si comprobación == nreserva Entonces
					Escribir "Su reserva ha sido cancelada."
					habitacion=0
					fecha=0
				SiNo
					Escribir "El número de reserva es erróneo."
				Fin Si
			Caso 3:
				Si habitacion=1 y fecha<>0 Entonces
					Escribir "Habitación 1 ocupada el ", fecha, " de enero."
					h1=0
				SiNo
					Escribir "Habitación 1 libre"
					h1=1
				Fin Si
				Si habitacion=2 y fecha<>0 Entonces
					Escribir "Habitación 2 ocupada el ", fecha, " de enero."
					h2=0
				SiNo
					Escribir "Habitación 2 libre"
					h2=1
				Fin Si
				Si habitacion=3 y fecha<>0 Entonces
					Escribir "Habitación 3 ocupada el ", fecha, " de enero."
					h3=0
				SiNo
					Escribir "Habitación 3 libre"
					h3=1
				Fin Si
				Si habitacion=4 y fecha<>0 Entonces
					Escribir "Habitación 4 ocupada el ", fecha, " de enero."
					h4=0
				SiNo
					Escribir "Habitación 4 libre"
					h4=1
				Fin Si
				Si habitacion=5 y fecha<>0 Entonces
					Escribir "Habitación 5 ocupada el ", fecha, " de enero."
					h5=0
				SiNo
					Escribir "Habitación 5 libre"
					h5=1	
				Fin Si
			Caso 4:
				hlibres= h1+h2+h3+h4+h5
				porcentaje= (hlibres*100)/5
				Escribir "El ",porcentaje "% del hotel está ocupado"
		Fin Segun
	Fin Mientras
	
FinAlgoritmo
