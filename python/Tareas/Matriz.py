def ingresar_matriz(tamano):
    matriz = []

    print(f"Introduce los valores de la matriz de {tamano}x{tamano}:")
    for i in range(tamano):
        fila = []
        for j in range(tamano):
            valor = int(input(f"Elemento [{i+1}][{j+1}]: "))
            fila.append(valor)
        matriz.append(fila)  
    return matriz

def transponer_matriz(matriz):
    tamano = len(matriz)
    matriz_transpuesta = [[0] * tamano for _ in range(tamano)] 

    for i in range(tamano):
        for j in range(tamano):
            matriz_transpuesta[j][i] = matriz[i][j] 
    return matriz_transpuesta

def imprimir_matriz(matriz, mensaje):
    print(mensaje)
    for fila in matriz:
        print(fila)

while True:
    tamano = int(input("¿Qué tamaño de matriz quieres (3 o 5)? "))
    if tamano in [3, 5]:
        break
    else:
        print("Por favor, introduce 3 o 5.")

matriz = ingresar_matriz(tamano)

matriz_transpuesta = transponer_matriz(matriz)

imprimir_matriz(matriz, "Matriz original:")
imprimir_matriz(matriz_transpuesta, "\nMatriz transpuesta:")