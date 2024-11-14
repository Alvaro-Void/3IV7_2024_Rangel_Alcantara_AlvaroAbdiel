import os
import tkinter as tk
from tkinter import simpledialog, messagebox
from tkinter import ttk

ARCHIVO = "C:\\Users\\poplar_pop\\Desktop\\3IV7_2024_Rangel_Alcántara_AlvaroAbdiel\\python\\Tareas\\Info_Stands.txt"

personajes = []

def cargar_datos():
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            next(f)  
            for linea in f:
                partes = linea.strip().split(",")
                if len(partes) >= 8:
                    stand = {
                        "nombre": partes[0],
                        "usuario": partes[1],
                        "poder": partes[2],
                        "velocidad": partes[3],
                        "rango": partes[4],
                        "durabilidad": partes[5],
                        "precision": partes[6],
                        "potencial": partes[7]
                    }
                    personajes.append(stand)

def buscar_personaje():
    nombre = simpledialog.askstring("Buscar Personaje", "Nombre del stand a buscar:")
    for stand in personajes:
        if stand['nombre'].lower() == nombre.lower():
            estadisticas = (
                f"Nombre: {stand['nombre']}\n"
                f"Usuario: {stand['usuario']}\n"
                f"Poder: {stand['poder']}\n"
                f"Velocidad: {stand['velocidad']}\n"
                f"Rango: {stand['rango']}\n"
                f"Durabilidad: {stand['durabilidad']}\n"
                f"Presicion: {stand['presicion']}\n"
                f"Potencial: {stand['potencial']}"
            )
            messagebox.showinfo("Estadísticas del Personaje", estadisticas)
            return
    messagebox.showwarning("No Encontrado", "No se encontró ningún personaje con ese nombre.")

def registrar_personaje():
    nombre = simpledialog.askstring("Entrada", "Nombre:")
    usuario = simpledialog.askstring("Entrada", "Usuario:")
    poder = simpledialog.askstring("Entrada", "Poder:")
    velocidad = simpledialog.askstring("Entrada", "Velocidad:")
    rango = simpledialog.askstring("Entrada", "Rango:")
    durabilidad = simpledialog.askstring("Entrada", "Durabilidad:")
    presicion = simpledialog.askstring("Entrada", "Presicion:")
    potencial = simpledialog.askstring("Entrada", "Potencial:")
    
    stand = {
        "nombre": nombre,
        "usuario": usuario,
        "poder": poder,
        "velocidad": velocidad,
        "rango": rango,
        "durabilidad": durabilidad,
        "presicion": presicion,
        "potencial": potencial
    }
    personajes.append(stand)
    guardar_datos()
    messagebox.showinfo("Éxito", "Stand registrado exitosamente.")

def mostrar_tabla_personajes():
    ventana_lista = tk.Toplevel()
    ventana_lista.title("Lista de stands")
    ventana_lista.geometry("850x450")
    #si no jala poner "Arial"
    titulo = tk.Label(ventana_lista, text="Jojo referencias", font=("Comic Sans", 14, "bold"))
    titulo.pack(pady=10)

    frame_tabla = tk.Frame(ventana_lista)
    frame_tabla.pack(fill="both", expand=True, padx=10, pady=10)

    scrollbar_y = ttk.Scrollbar(frame_tabla, orient="vertical")
    scrollbar_x = ttk.Scrollbar(frame_tabla, orient="horizontal")

    tabla = ttk.Treeview(
        frame_tabla,
        columns=("nombre", "usuario", "poder", "velocidad", "rango", "durabilidad", "presicion", "potencial"),
        show="headings",
        yscrollcommand=scrollbar_y.set,
        xscrollcommand=scrollbar_x.set
    )

    tabla.heading("nombre", text="Nombre")
    tabla.heading("usuario", text="Usuario")
    tabla.heading("poder", text="Poder")
    tabla.heading("velocidad", text="Velocidad")
    tabla.heading("rango", text="Rango")
    tabla.heading("durabilidad", text="Durabilidad")
    tabla.heading("presicion", text="Presicion")
    tabla.heading("potencial", text="Potencial")

    tabla.column("nombre", width=100)
    tabla.column("usuario", width=100)
    tabla.column("poder", width=100)
    tabla.column("velocidad", width=120)
    tabla.column("rango", width=80)
    tabla.column("durabilidad", width=80)
    tabla.column("presicion", width=80)
    tabla.column("potencial", width=80)

    scrollbar_y.config(command=tabla.yview)
    scrollbar_x.config(command=tabla.xview)

    tabla.grid(row=0, column=0, sticky="nsew")
    scrollbar_y.grid(row=0, column=1, sticky="ns")
    scrollbar_x.grid(row=1, column=0, sticky="ew")

    frame_tabla.grid_rowconfigure(0, weight=1)
    frame_tabla.grid_columnconfigure(0, weight=1)

    for stand in personajes:
        tabla.insert("", "end", values=(
            stand['nombre'], 
            stand['usuario'], 
            stand['poder'], 
            stand['velocidad'], 
            stand['rango'], 
            stand['durabilidad'], 
            stand['presicion'], 
            stand['potencial']
        ))

def editar_personaje():
    nombre = simpledialog.askstring("Editar Personaje", "Nombre del personaje a editar:")
    for stand in personajes:
        if stand['nombre'].lower() == nombre.lower():
            stand['usuario'] = simpledialog.askstring("Editar", "Usuario:", initialvalue=stand['usuario']) or stand['usuario']
            stand['poder'] = simpledialog.askstring("Editar", "Poder:", initialvalue=stand['poder']) or stand['poder']
            stand['velocidad'] = simpledialog.askstring("Editar", "Velocidad:", initialvalue=stand['velocidad']) or stand['velocidad']
            stand['rango'] = simpledialog.askstring("Editar", "Rango:", initialvalue=stand['rango']) or stand['rango']
            stand['durabilidad'] = simpledialog.askstring("Editar", "Durabilidad:", initialvalue=stand['durabilidad']) or stand['durabilidad']
            stand['presicion'] = simpledialog.askstring("Editar", "Presicion:", initialvalue=stand['presicion']) or stand['presicion']
            stand['potencial'] = simpledialog.askstring("Editar", "Potencial:", initialvalue=stand['potencial']) or stand['potencial']
            guardar_datos()
            messagebox.showinfo("Éxito", "Stand editado exitosamente.")
            return
    messagebox.showwarning("Error", "Stand no encontrado")

def eliminar_personaje():
    nombre = simpledialog.askstring("Eliminar stand", "Nombre del stand a eliminar:")
    for stand in personajes:
        if stand['nombre'].lower() == nombre.lower():
            personajes.remove(stand)
            guardar_datos()
            messagebox.showinfo("Éxito", "Araki forgot.")
            return
    messagebox.showwarning("Error", "Stand no encontrado ")

def guardar_datos():
    with open(ARCHIVO, "w") as f:
        f.write("nombre,usuario,poder,velocidad,rango,durabilidad,presicion,potencial\n")
        for stand in personajes:
            f.write(f"{stand['nombre']},{stand['usuario']},{stand['poder']},{stand['velocidad']},{stand['rango']},{stand['durabilidad']},{stand['presicion']},{stand['potencial']}\n")

def main():
    cargar_datos()
    global root
    root = tk.Tk()
    root.title("Jojo referencias parte 2")
    
    tk.Button(root, text="Registrar stand", command=registrar_personaje).pack(pady=5)
    tk.Button(root, text="Lista de stands", command=mostrar_tabla_personajes).pack(pady=5)
    tk.Button(root, text="Consultar stand", command=buscar_personaje).pack(pady=5)
    tk.Button(root, text="Editar stand", command=editar_personaje).pack(pady=5)
    tk.Button(root, text="Eliminar stand", command=eliminar_personaje).pack(pady=5)
    tk.Button(root, text="Salir", command=root.quit).pack(pady=5)
    
    root.mainloop()

main()