import math

#Vamos a crear una funcion para calcular el area y perimetro

def rectangulo(base, altura):
    area= base*altura
    perimetro= 2*(base+altura)
    return area, perimetro

def triangulo(base, altura):
    area= (base*altura)/2
    perimetro= lado1+lado2+lado3
    return area, perimetro

def esfera(radio):
    volumen= (4/3)*math.pi*radio**3
    return volumen

def menu():
    print("Bienvenido a python con funciones")
    print("Elije una opcion: ")
    print("A.- Area y perimetro de Rectangulo")
    print("B.- Area y perimetro de Triangulo")
    print("C.- Volumen de Esfera")

#Programa Main

menu()
opcion= input("Introduce la opción a desear: ").upper()

if opcion== "A":
    base= float(input("Introduce la base: "))
    altura= float(input("Introduce la altura: "))
    area, perimetro = rectangulo(base, altura)

    print("El area es de: ", area)
    print("El perimetro es de: ", perimetro)

elif opcion== "B":
    base= float(input("Introduce la base: "))
    altura= float(input("Introduce la altura: "))
    lado1= float(input("Introduce el valor del lado1: "))
    lado2= float(input("Introduce el valor del lado2: "))
    lado3= float(input("Introduce el valor del lado3: "))
    area, perimetro = rectangulo(base, altura, lado1, lado2, lado3)
    
    print("El area del Triangulo es de: ", area)
    print("El perimetro del triangulo es de: ", perimetro)

elif opcion== "C":
    radio= float(input("Introduce el radio: "))
    volumen= esfera(radio)

    print("El volumen es de: ", volumen)

else:
    print("Opcion no valida")
