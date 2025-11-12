# 🧮 Semana de Trabajo – Operaciones Matemáticas con NumPy
**Carrera:** Ingeniería en Ciencias de Datos e Inteligencia Artificial  
**Asignatura:** Programación II  
**Periodo:** 2025–2S  
**Docente:** Ing. José Andrés Zuñiga Cazorla  

---

## 🎯 Objetivo de la semana
Desarrollar habilidades en el uso de **NumPy** para operaciones matemáticas, vectorizadas y matriciales, comprendiendo el concepto de **broadcasting** y aplicando herramientas estadísticas y de álgebra lineal para el análisis numérico.

---

## 📘 Contenidos principales
Basado en el libro *Numerical Python (Robert Johansson, 2024)* y la presentación **“Mathematical Operations with NumPy”**.

### 1️⃣ Operaciones aritméticas básicas
- Suma, resta, multiplicación y división entre arreglos.  
- Uso de funciones equivalentes: `np.add`, `np.subtract`, `np.multiply`, `np.divide`.  
- Operaciones in-place para optimizar memoria (`x += y`).

### 2️⃣ Funciones matemáticas elementales
- Funciones trigonométricas: `np.sin`, `np.cos`, `np.tan`.  
- Exponenciales y logarítmicas: `np.exp`, `np.log`, `np.log10`, `np.log2`.  
- Raíces y redondeos: `np.sqrt`, `np.floor`, `np.ceil`, `np.round`.

### 3️⃣ Broadcasting
- Expansión automática de dimensiones entre arreglos de distinta forma.  
- Aplicaciones prácticas:
  - Normalización de datos.
  - Cálculo de distancias y combinaciones de vectores.
  - Operaciones entre vectores columna y fila.

### 4️⃣ Operaciones vectoriales y matriciales
- Producto punto (`np.dot`, `@`), cruzado (`np.cross`), externo (`np.outer`) y de Kronecker (`np.kron`).

### 5️⃣ Estadísticas descriptivas
- Promedio, mediana, desviación estándar y varianza (`np.mean`, `np.median`, `np.std`, `np.var`).
- Varianza muestral (`ddof=1`).

### 6️⃣ Funciones vectorizadas personalizadas
- Uso de `np.vectorize` para aplicar funciones definidas por el usuario.
- Ejemplo: función escalón de Heaviside.

---

## 💻 Actividades prácticas

### 🧩 Notebook 1 – *NumPy_Ejercicios_Presentacion.ipynb*
Ejercicios guiados para reforzar:
- Operaciones básicas y elementales.  
- Aplicaciones de `broadcasting`.  
- Normalización de datos y operaciones matriciales.  
- Cálculo de estadísticas descriptivas.  
- Mini-proyecto de integración (normalización, promedio móvil y z-score).

> 💡 **Recomendación:** resolver en clase y entregar al final de la semana.

📎 Archivo: [`Week06_STV.ipynb`](Week06_STV.ipynb)

---

### 🔬 Notebook 2 – *NumPy_Ejercicios_Avanzados_Tutorial.ipynb*
Ejercicios de aplicación avanzada para la sesión tutorial:
- Broadcasting avanzado y softmax estable.  
- Distancias euclidianas vectorizadas.  
- Álgebra lineal: `solve`, `eigh`, `svd`.  
- Contracciones tensoriales con `einsum` y `tensordot`.  
- Indexación booleana y agregaciones tipo *groupby*.  
- Promedio móvil, simulación Monte Carlo y comparación de rendimiento.  
- Bonus: una iteración completa de K-means sin bucles.

> 🧠 **Objetivo tutorial:** dominar operaciones vectorizadas de alto nivel y comparar rendimiento entre métodos.

📎 Archivo: [`Week06_ST.ipynb`](Week06_ST.ipynb)

---

## 🧠 Actividad adicional
### Guía impresa – *Ejercicios de Broadcasting a mano*
- 7 ejercicios para resolver en clase sin código, practicando expansión de dimensiones.  
- Incluye casos compatibles e incompatibles.

📄 Archivo: `Broadcasting.pdf` (guía impresa para estudiantes).


---

## 📚 Recursos complementarios
- Johansson, R. (2024). *Numerical Python: Scientific Computing and Data Science Applications with NumPy, SciPy and Matplotlib*. Apress.  
- Documentación oficial: [https://numpy.org/doc/stable](https://numpy.org/doc/stable)  
- Visualizador interactivo de broadcasting: [https://numpy.org/doc/stable/user/basics.broadcasting.html](https://numpy.org/doc/stable/user/basics.broadcasting.html)

---

## ✅ Entregables de la semana
1. Notebook resuelto **NumPy_Ejercicios_Presentacion.ipynb**.  
2. Notebook avanzado **NumPy_Ejercicios_Avanzados_Tutorial.ipynb** (con ejecuciones).  
3. Guía escrita **Ejercicios de Broadcasting** (a mano o escaneada).

---

**💬 Nota final:**  
Esta semana marca la transición hacia el trabajo con arreglos multidimensionales y el razonamiento vectorizado, una base esencial para el curso de **Machine Learning I**.  
Dominar NumPy no solo mejora el rendimiento del código, sino también la comprensión de cómo piensan las bibliotecas científicas de Python.

---

> _“La vectorización no es magia, es matemáticas expresadas sin bucles.”_ 🧠
