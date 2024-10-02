Algoritmo Vidas
	
	Escribir "Insertar número de personas"
	Leer N
	Escribir "Insertar número de años"
	Leer Q
	
	Dimension Edades[2,N], Años[Q], R[Q,3]
	
	
	Para x=1 Hasta N Hacer
		Escribir "Ingresar año de nacimiento"
		Leer Edades[1,x]
		Escribir "Ingresar año de fallecimiento (Ingrese 0 si no ha fallecido)"
		Leer Edades[2,x]
	Fin Para
	
	
	Para i<-1 Hasta Q Hacer
		Escribir "Ingrese los años de interés."
		Leer Años[i]
	Fin Para
	
	
	Para l<-1 Hasta Q Hacer
		nv = 0 
		Para x<-1 Hasta N Hacer
			Si Edades[1,x] <= Años[l] y (Edades[2,x] >= Años[l] o Edades[2,x] = 0) Entonces
				nv = nv + 1
			Fin Si
		Fin Para
		R[l,1] = nv 
	Fin Para
	
	
	Para m<-1 Hasta Q Hacer
		e_min = 999 
		Para x<-1 Hasta N Hacer
			Si Edades[1,x] <= Años[m] y (Edades[2,x] >= Años[m] o Edades[2,x] = 0) Entonces
				edad_actual = Años[m] - Edades[1,x]
				Si edad_actual < e_min Entonces
					e_min = edad_actual
				Fin Si
			Fin Si
		Fin Para
		R[m,2] = e_min 
	Fin Para
	
	
	Para m<-1 Hasta Q Hacer
		e_max = 0 
		Para x<-1 Hasta N Hacer
			Si Edades[1,x] <= Años[m] y (Edades[2,x] >= Años[m] o Edades[2,x] = 0) Entonces
				edad_actual = Años[m] - Edades[1,x]
				Si edad_actual > e_max Entonces
					e_max = edad_actual
				Fin Si
			Fin Si
		Fin Para
		R[m,3] = e_max 
	Fin Para
	
	
	Para n=1 Hasta Q Hacer
		Escribir "Para el año ", Años[n]
		Escribir "¿Cuántas personas había vivas en ese año?"
		Escribir "R: ", R[n,1]
		Escribir "¿Cuántos años tenía la persona viva más joven en ese año?"
		Escribir "R: ", R[n,2]
		Escribir "¿Cuántos años tenía la persona viva más anciana en ese año?"
		Escribir "R: ", R[n,3]
	Fin Para
	
FinAlgoritmo
