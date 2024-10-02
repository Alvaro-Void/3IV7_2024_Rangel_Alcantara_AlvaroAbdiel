Algoritmo Vidas
	
	Escribir "Insertar n�mero de personas"
	Leer N
	Escribir "Insertar n�mero de a�os"
	Leer Q
	
	Dimension Edades[2,N], A�os[Q], R[Q,3]
	
	
	Para x=1 Hasta N Hacer
		Escribir "Ingresar a�o de nacimiento"
		Leer Edades[1,x]
		Escribir "Ingresar a�o de fallecimiento (Ingrese 0 si no ha fallecido)"
		Leer Edades[2,x]
	Fin Para
	
	
	Para i<-1 Hasta Q Hacer
		Escribir "Ingrese los a�os de inter�s."
		Leer A�os[i]
	Fin Para
	
	
	Para l<-1 Hasta Q Hacer
		nv = 0 
		Para x<-1 Hasta N Hacer
			Si Edades[1,x] <= A�os[l] y (Edades[2,x] >= A�os[l] o Edades[2,x] = 0) Entonces
				nv = nv + 1
			Fin Si
		Fin Para
		R[l,1] = nv 
	Fin Para
	
	
	Para m<-1 Hasta Q Hacer
		e_min = 999 
		Para x<-1 Hasta N Hacer
			Si Edades[1,x] <= A�os[m] y (Edades[2,x] >= A�os[m] o Edades[2,x] = 0) Entonces
				edad_actual = A�os[m] - Edades[1,x]
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
			Si Edades[1,x] <= A�os[m] y (Edades[2,x] >= A�os[m] o Edades[2,x] = 0) Entonces
				edad_actual = A�os[m] - Edades[1,x]
				Si edad_actual > e_max Entonces
					e_max = edad_actual
				Fin Si
			Fin Si
		Fin Para
		R[m,3] = e_max 
	Fin Para
	
	
	Para n=1 Hasta Q Hacer
		Escribir "Para el a�o ", A�os[n]
		Escribir "�Cu�ntas personas hab�a vivas en ese a�o?"
		Escribir "R: ", R[n,1]
		Escribir "�Cu�ntos a�os ten�a la persona viva m�s joven en ese a�o?"
		Escribir "R: ", R[n,2]
		Escribir "�Cu�ntos a�os ten�a la persona viva m�s anciana en ese a�o?"
		Escribir "R: ", R[n,3]
	Fin Para
	
FinAlgoritmo
