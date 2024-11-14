#derivado a que es necesario poder almacenar diferentes fuentes de datos
#en python se utiliza la variable diccionario
#un diccionario es capaz de poder almacenar diferentes tipos de dato en formato de lista
import tkinter as tk
from tkinter import messagebox, simpledialog

#para poder guardar los datos correspondientes de la lista es necesario utilizar un archivo, para ello vamos a ocupar la libreria os
import os

#vamos a declarar un archivo, tenemos dos opciones una ruta dinamica o una ruta estatica, eso queda de tarea 
ARCHIVO = "C:\\Users\\poplar_pop\\Desktop\\3IV7_2024_Rangel_Alcántara_AlvaroAbdiel\\python\\05Listas\\alumnos.txt"

#el examen debe de tener almenos 8 elementos de la lista que deseen guardar el examen debe de posee elementos de dialogo y mensajes de salida con tkinter, la lista debe de implementar al menos 30 diferentes elementos y debe verse una interfaz mediante la cual los imprima en formato de lista

#primero vamos a crear una lista de alumnos
alumnos = []

#vamos a crear una funcion para cargar datos
def cargar_datos():
    #verificar si existe el archivo
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for linea in f:
                #que voy a obtener por cada linea
                #es un metodo de cadena que nos ayuda a eliminar espacios al inicio y final de una cadena " habia     "
                partes = linea.strip().split(",")
                if len(partes) >= 6:
                    boleta = partes[0]
                    nombre = partes[1]
                    appat = partes[2]
                    apmat = partes[3]
                    fecnac = partes[4]
                    calificaciones  = list(map(float, partes[5:]))
                    #defino al alumno
                    alumno = {
                        "boleta" : boleta,
                        "nombre" : nombre,
                        "apellido_paterno" : appat,
                        "apellido_materno" : apmat,
                        "fecha_nacimiento" : fecnac,
                        "calificaciones" : calificaciones
                    }
                    alumnos.append(alumno)

#vamos a crear la funcion para guardar los datos
def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for alumno in alumnos:
            f.write(f"{alumno['boleta']},{alumno['nombre']},{alumno['apellido_paterno']},{alumno['apellido_materno']},{alumno['fecha_nacimiento']}, {','.join(map(str,alumno['calificaciones']))}\n")




#vamos a crear una funcion que se encargue de registrar un alumno

def registrar_alumno():
    boleta = simpledialog.askstring("Entrada", "Ingresa la boleta del alumno: ")
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre del alumno: ")
    appat = simpledialog.askstring("Entrada", "Ingresa el apellido paterno del alumno: ")
    apmat = simpledialog.askstring("Entrada", "Ingresa el apellido materno del alumno: ")
    fecnac = simpledialog.askstring("Entrada", "Ingresa la fecha de nacimiento(dd/mm/aaaa) del alumno: ")

    calificaciones = []
    #vamos a solicitar 3 calificaciones
    for i in range(1,4):
        calificacionparcial = simpledialog.askfloat("Entrada", "Ingrese la calificacion del parcial: ")
        calificaciones.append(calificacionparcial)

    #defino al alumno
    alumno = {
        "boleta" : boleta,
        "nombre" : nombre,
        "apellido_paterno" : appat,
        "apellido_materno" : apmat,
        "fecha_nacimiento" : fecnac,
        "calificaciones" : calificaciones
    }

    alumnos.append(alumno)
    #aqui tengo que mandar a llamar a 
    guardar_datos()
    messagebox.showinfo("Exito", "Alumno registrado exitosamente")

#funcion para poder consultar los datos del arreglo de alumnos(lista)
def consultar_alumnos() :
    cargar_datos()
    if not alumnos :
        print("No hay registros solo juguito contigo")
    else :
        print("Lista de Alumnos: \n")
        for alumno in alumnos :
            print(f"Boleta: {alumno['boleta']}, Nombre: {alumno['nombre']} {alumno['apellido_paterno']} {alumno['apellido_materno']}, Fecha de Nacimiento: {alumno['fecha_nacimiento']}, Calificaciones: {alumno['calificaciones']} \n" )

#funcion para buscar y editar por la boleta
def editar_alumno() :
    boleta = input("Ingrese la boleta del alumnos que desea editar: ")
    for alumno in alumnos :
        if alumno['boleta'] == boleta :
            alumno['nombre'] = simpledialog.askstring("Ingresa el nuevo nombre o presiona Enter para mantener el actual:") or alumno['nombre']
            alumno['apellido_paterno'] = simpledialog.askstring("Ingresa el nuevo apellido paterno o presiona Enter para mantener el actual:") or alumno['apellido_paterno']
            alumno['apellido_materno'] = simpledialog.askstring("Ingresa el nuevo apellido materno o presiona Enter para mantener el actual:") or alumno['apellido_materno']
            alumno['fecha_nacimiento'] = simpledialog.askstring("Ingresa la nueva fecha de nacimiento o presiona Enter para mantener el actual:") or alumno['fecha_nacimiento']
            #editamos las calificaciones
            for i in range(3) :
                nueva_calificacion = simpledialog.askfloat("Ingresa ela nueva calificacion o presiona Enter para mantener el actual:")
                if nueva_calificacion: 
                    alumno['calificaciones'][i] = float(nueva_calificacion)

    print("No hay mas alumnos")
    return

#eliminar alumno
def eliminar_alumno():
    print("esto es parte del examen")

def buscar_alumno():
    boleta = input("Ingrese la boleta del alumno que desea buscar: ")
    for alumno in alumnos :
        if alumno['boleta'] == boleta :
            print(f"Boleta: {alumno['boleta']}, Nombre: {alumno['nombre']} {alumno['apellido_paterno']} {alumno['apellido_materno']}, Fecha de Nacimiento: {alumno['fecha_nacimiento']}, Calificaciones: {alumno['calificaciones']} \n" )

#vamos a crear un menu
def main() :
    while True:
        print("Menu de Gestión de Proximos Extras")
        print("1.- Registrar Alumno")
        print("2.- Consultar lista de Alumnos")
        print("3.- Editar Alumno")
        print("4.- Eliminar Alumno")
        print("5.- Buscar alumno")
        print("6.- Salir")

        opcion = input("Seleccione una opción: ")

        if opcion == "1" :
            registrar_alumno()
        elif opcion == "2" :
            consultar_alumnos()
        elif opcion == "3" :
            editar_alumno()
        elif opcion == "4" :
            #ahi la crean
            eliminar_alumno()
        elif opcion == "5" :
            buscar_alumno()
        elif opcion == "6" :
            print("Ayos")
            break
        else : 
            print("opcion no valida")

main()