# Programación II — Semana 5: Fundamentos de NumPy (Guía de Estudiante)

## 🧠 Introducción

Esta semana te enfocas en los **fundamentos de NumPy**, la librería base para cómputo numérico en Python. Aprenderás a crear y manipular arreglos, consultar sus propiedades, realizar operaciones elementales y preparar datos para tareas más avanzadas.

---

## 🎯 Objetivos de Aprendizaje

* Crear y manipular **arreglos 1D, 2D y 3D** con NumPy.
* Comprender y utilizar las **propiedades** principales de un arreglo (`ndim`, `shape`, `size`, `dtype`).
* Ejecutar **operaciones aritméticas** y **estadísticas** básicas sobre arreglos.
* Reestructurar datos con **`reshape`** y **aplanar** con `ravel`/`flatten`.
* Aplicar **indexación** y **slicing** para seleccionar y modificar subconjuntos de datos.

---

## 📚 Contenidos (según el notebook)

### 0. Preparación del entorno

**Idea:** Importar NumPy y configurar una semilla si se usarán números aleatorios.

```python
import numpy as np
np.random.seed(42)
```

---

### 1. Arreglos unidimensionales (1D)

* Crear arreglos desde listas: `np.array([1,2,3])`.
* Rango y secuencias: `np.arange(inicio, fin, paso)` y `np.linspace(inicio, fin, num)`.
* Inicializadores rápidos: `np.zeros(n)`, `np.ones(n)`, `np.full(n, valor)`.

**Meta:** Comprender que un arreglo 1D es la base para construir estructuras más complejas.

---

### 2. Arreglos multidimensionales (2D/3D)

* Matrices con `np.array([[...],[...]])` y con inicializadores: `np.zeros((m,n))`, `np.ones((m,n))`, `np.eye(n)`.
* Tensores 3D: `np.random.rand(x, y, z)`.

**Meta:** Entender cómo se representan filas, columnas y ejes adicionales.

---

### 3. Propiedades del arreglo

* Dimensiones: `a.ndim`
* Forma: `a.shape`
* Tamaño total: `a.size`
* Tipo de dato: `a.dtype`
* Cambio de tipo: `a.astype(np.float32)`

**Meta:** Saber inspeccionar y ajustar la estructura y el tipo de datos.

---

### 4. Operaciones básicas y estadísticas

* Aritmética elemento a elemento: `+`, `-`, `*`, `/`, `**` y funciones `np.add`, `np.multiply`.
* Agregaciones: `np.sum`, `np.mean`, `np.median`, `np.std`, `np.var`, `np.min`, `np.max`.
* Eje de operación: `axis=0` (por columnas), `axis=1` (por filas).

**Meta:** Obtener resúmenes numéricos y operar eficientemente sin bucles explícitos.

---

### 5. Reorganización (`reshape`) y aplanamiento (`flatten`)

* Cambiar forma: `a.reshape(n_filas, n_cols)`.
* Aplanar sin copiar (vista): `a.ravel()`; con copia: `a.flatten()`.
* Inferencia de dimensión: usar `-1` en `reshape` para que NumPy calcule el tamaño.

**Meta:** Reestructurar datos para adaptarlos a diferentes operaciones.

---

### 6. Indexación y slicing

* Selección por índice y rebanadas: `a[i]`, `a[i:j:k]`.
* Indexación 2D: `a[fila, col]`, submatrices `a[i1:i2, j1:j2]`.
* Asignación a subarreglos y **broadcasting** básico.

**Meta:** Extraer y modificar subconjuntos de datos de forma precisa y vectorizada.

---

## 🧪 Actividades y Práctica Guiada

1. **Construcción 1D:** crea un arreglo con los enteros del 10 al 30 y calcula su media y desviación estándar.
2. **Matrices 2D:** genera una matriz 5×5 con valores de 0 a 24 y reordénala a 3×(??) con `reshape` usando `-1`.
3. **Estadística por ejes:** dado un arreglo 3×4 aleatorio, calcula `mean(axis=0)` y `std(axis=1)` e interpreta los resultados.
4. **Slicing preciso:** a partir de una matriz 6×6, extrae el bloque central 4×4 y asígnale el valor 9.
5. **Flatten vs ravel:** demuestra con un ejemplo cuándo modificar la vista afecta al arreglo original.

---

## 🧩 Reto (opcional)

Genera un arreglo 3D de forma `(3, 4, 5)` con valores aleatorios. Reorganízalo a `(12, 5)` usando `reshape` y verifica que el **tamaño total** se conserve. Calcula la media por columnas y selecciona las columnas cuya media sea mayor al promedio global.

---

## ✅ Recomendaciones finales

* Prefiere las **operaciones vectorizadas** sobre los bucles `for`.
* Revisa `shape` y `dtype` ante resultados inesperados.
* Usa `np.newaxis` o `None` para ajustar ejes al **broadcasting** cuando sea necesario.
* Documenta brevemente cada bloque de código: qué entra, qué sale y por qué.

---

> **Resultado esperado:** al finalizar esta semana, podrás construir y manipular arreglos NumPy con soltura, realizar cálculos básicos eficientes y preparar datos para módulos más avanzados de análisis o modelado.
