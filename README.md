# Programación II — Semana 4: Métodos mágicos, sobrecarga de operadores y patrón Singleton

## 🧠 Introducción

En esta semana exploramos características avanzadas de la Programación Orientada a Objetos (POO) en Python, enfocándonos en los **métodos mágicos**, la **sobrecarga de operadores** y el **patrón de diseño Singleton**.

Los **métodos mágicos** son funciones especiales que permiten modificar el comportamiento interno de los objetos, haciéndolos más expresivos y naturales al interactuar con el lenguaje. El **patrón Singleton**, por otro lado, asegura que una clase tenga una única instancia durante toda la ejecución del programa.

---

## 🎯 Objetivos de Aprendizaje

* Comprender la utilidad de los métodos mágicos en la personalización del comportamiento de clases.
* Aplicar la sobrecarga de operadores para operaciones entre objetos.
* Implementar métodos especiales para representar, comparar y manipular objetos.
* Crear clases que se comporten como contenedores personalizados.
* Diseñar e implementar el patrón Singleton en Python.
* Integrar todos los conceptos en un proyecto práctico final.

---

## 🧩 Contenidos Principales

### A. Nivel 1 — Comprensión y construcción

**Conceptos:** Métodos `__init__`, `__str__`, `__repr__`
Estos métodos definen cómo se inicializan los objetos y cómo se representan de forma legible.

```python
class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def __str__(self):
        return f"{self.nombre} ({self.edad} años)"

    def __repr__(self):
        return f"Persona(nombre='{self.nombre}', edad={self.edad})"
```

**Ejercicios:**

1. Presentación automática de objetos.
2. Representación para depuración mediante `__repr__`.

---

### B. Nivel 2 — Sobrecarga de operadores

**Conceptos:** Métodos `__add__`, `__sub__`, `__mul__`, `__eq__`, `__lt__`, `__gt__`
Permiten definir el comportamiento de operadores matemáticos y lógicos para instancias de una clase.

```python
class Vector:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __add__(self, other):
        return Vector(self.x + other.x, self.y + other.y)

    def __sub__(self, other):
        return Vector(self.x - other.x, self.y - other.y)

    def __eq__(self, other):
        return self.x == other.x and self.y == other.y
```

**Ejercicios:**

* Suma y resta de vectores.
* Producto punto (`__mul__`).
* Comparación de objetos con operadores relacionales.

---

### C. Nivel 3 — Contenedores y otros métodos mágicos

**Conceptos:** Métodos `__len__`, `__getitem__`, `__setitem__`, `__iter__`
Permiten crear clases que se comportan como listas o diccionarios.

```python
class Inventario:
    def __init__(self):
        self.items = []

    def __len__(self):
        return len(self.items)

    def __getitem__(self, index):
        return self.items[index]

    def agregar(self, item):
        self.items.append(item)
```

**Ejercicio:** Implementar un inventario que pueda recorrerse e indexarse como una lista.

---

### D. Nivel 4 — Patrón Singleton

**Conceptos:** Control de instanciación, atributos de clase compartidos.

El patrón Singleton asegura que solo exista **una única instancia** de una clase. Esto es útil para gestores de configuración, conexiones de base de datos o recursos compartidos.

```python
class Singleton:
    _instancia = None

    def __new__(cls, *args, **kwargs):
        if cls._instancia is None:
            cls._instancia = super().__new__(cls)
        return cls._instancia
```

**Ejercicios:**

1. Gestor de configuración única.
2. Contador global Singleton.

---

### E. Nivel 5 — Reto Integrador

**Proyecto:** Sistema de cuentas bancarias
Combina herencia, sobrecarga de operadores y encapsulación. Los objetos deben representar cuentas con saldo, permitir operaciones y mantener control centralizado mediante Singleton.

---

### ⭐ Ejercicio Extra (Integrador): Gestor de Usuarios del Sistema

**Objetivo:** aplicar todos los conceptos vistos.

**Componentes:**

* Clase `Usuario` con atributos (nombre, correo, rol, estado).
* Métodos mágicos `__repr__`, `__eq__`, `__str__`.
* Control Singleton para la gestión global de usuarios.
* Validaciones básicas y almacenamiento en lista interna.

---

## 🧠 Actividades sugeridas

1. Modifica una clase para que se comporte como un contenedor iterable.
2. Implementa un sistema de logs centralizado usando Singleton.
3. Redefine los operadores `+` y `-` para una clase personalizada.
4. Crea tu propio ejemplo de sobrecarga de comparación (`<`, `>`, `==`).

---

## ✅ Recomendaciones finales

* Usa los métodos mágicos para hacer que tus clases sean más intuitivas y expresivas.
* No abuses del patrón Singleton: aplícalo solo cuando una instancia única tenga sentido lógico.
* Verifica siempre la consistencia interna de los objetos cuando sobrecargues operadores.
* Documenta los comportamientos redefinidos para facilitar la lectura y mantenimiento del código.

---

> **Objetivo general:** dominar el uso de métodos mágicos, la sobrecarga de operadores y el patrón Singleton como herramientas avanzadas en el diseño orientado a objetos con Python.
