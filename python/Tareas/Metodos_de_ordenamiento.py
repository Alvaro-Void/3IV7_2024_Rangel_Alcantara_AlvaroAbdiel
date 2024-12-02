import tkinter as tk
from tkinter import messagebox
import time

def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

def selection_sort(arr):
    n = len(arr)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr

def insertion_sort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i-1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    return arr

def merge_sort(arr):
    if len(arr) > 1:
        mid = len(arr) // 2
        left_half = arr[:mid]
        right_half = arr[mid:]

        merge_sort(left_half)
        merge_sort(right_half)

        i = j = k = 0

        while i < len(left_half) and j < len(right_half):
            if left_half[i] < right_half[j]:
                arr[k] = left_half[i]
                i += 1
            else:
                arr[k] = right_half[j]
                j += 1
            k += 1

        while i < len(left_half):
            arr[k] = left_half[i]
            i += 1
            k += 1

        while j < len(right_half):
            arr[k] = right_half[j]
            j += 1
            k += 1
    return arr

def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    else:
        pivot = arr[len(arr) // 2]
        left = [x for x in arr if x < pivot]
        middle = [x for x in arr if x == pivot]
        right = [x for x in arr if x > pivot]
        return quick_sort(left) + middle + quick_sort(right)

def sort_numbers():
    try:
        input_numbers = entry.get()
        numbers = list(map(int, input_numbers.split(',')))

        if len(numbers) > 40:
            messagebox.showerror("Error", "Por favor, ingrese un máximo de 40 números.")
            return

        method = sorting_method.get()

        start_time = time.time()
        if method == "Burbuja":
            sorted_numbers = bubble_sort(numbers.copy())
        elif method == "Selección":
            sorted_numbers = selection_sort(numbers.copy())
        elif method == "Inserción":
            sorted_numbers = insertion_sort(numbers.copy())
        elif method == "Merge Sort":
            sorted_numbers = merge_sort(numbers.copy())
        elif method == "Quick Sort":
            sorted_numbers = quick_sort(numbers.copy())
        else:
            messagebox.showerror("Error", "Método de ordenamiento no válido.")
            return
        end_time = time.time()

        result_text = f"Lista original: {numbers}\nLista ordenada: {sorted_numbers}\nTiempo de ordenamiento: {end_time - start_time:.6f} segundos"
        messagebox.showinfo("Resultados", result_text)

    except ValueError:
        messagebox.showerror("Error", "Por favor, ingrese solo números separados por comas.")

root = tk.Tk()
root.title("Ordenador de Números")

label = tk.Label(root, text="Ingrese hasta 40 números separados por comas:")
label.pack()

entry = tk.Entry(root, width=100)
entry.pack()

sorting_method = tk.StringVar(value="Burbuja")
method_frame = tk.Frame(root)
method_frame.pack()

bubble_radio = tk.Radiobutton(method_frame, text="Burbuja", variable=sorting_method, value="Burbuja")
bubble_radio.pack(side=tk.LEFT)

selection_radio = tk.Radiobutton(method_frame, text="Selección", variable=sorting_method, value="Selección")
selection_radio.pack(side=tk.LEFT)

insertion_radio = tk.Radiobutton(method_frame, text="Inserción", variable=sorting_method, value="Inserción")
insertion_radio.pack(side=tk.LEFT)

merge_radio = tk.Radiobutton(method_frame, text="Merge Sort", variable=sorting_method, value="Merge Sort")
merge_radio.pack(side=tk.LEFT)

quick_radio = tk.Radiobutton(method_frame, text="Quick Sort", variable=sorting_method, value="Quick Sort")
quick_radio.pack(side=tk.LEFT)

sort_button = tk.Button(root, text="Ordenar", command=sort_numbers)
sort_button.pack()

root.mainloop()