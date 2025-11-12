# 🐍 Programación 2 — Week 01  
**Tema:** Programación Orientada a Objetos (POO) en Python  
**Profesor:** José Andrés Zúñiga Cazorla  

---

## 🎯 Objetivo general
Modelar problemas del mundo real mediante **clases** y **objetos** que combinen datos (**atributos**) y comportamientos (**métodos**).

---

## 🧩 Contenidos principales

### 1️⃣ ¿Por qué POO?
- Organiza el código por responsabilidades.  
- Facilita la reutilización, mantenimiento y extensibilidad.  
- Fomenta pensar en **“cosas que actúan”** (objetos).

---

### 2️⃣ Clase vs. Objeto
| Concepto | Descripción |
|-----------|-------------|
| **Clase** | Plantilla o *blueprint* que define la estructura y comportamiento de los objetos. |
| **Objeto** | Instancia concreta creada a partir de una clase. |

📘 **Ejemplo mental:**  
El plano (clase) frente a una casa construida (objeto).

---

### 3️⃣ Sintaxis básica de una clase en Python
```python
class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def saludar(self):
        print(f"Hola, soy {self.nombre} y tengo {self.edad} años.")
```
💡 `__init__` inicializa el estado; `self` referencia a la instancia actual.

---

### 4️⃣ Atributos y Métodos
- **Atributos:** describen el estado del objeto.  
- **Métodos:** definen lo que el objeto puede hacer.  
- Usa nombres descriptivos y consistentes.

---

### 5️⃣ Atributos de instancia vs. de clase
```python
class Curso:
    campus = "UNACH"      # atributo de clase
    def __init__(self, nombre):
        self.nombre = nombre  # atributo de instancia
```
👉 Cambiar `Curso.campus` afecta a todas las instancias.

---

### 6️⃣ Encapsulamiento (convenciones Python)
- `_interno`: indica uso interno.  
- `__privado`: *name mangling* para herencia.  
- Usa `@property` y docstrings para acceso controlado.

---

### 7️⃣ Métodos especiales
| Método | Propósito |
|---------|-----------|
| `__str__` | Representación legible para usuarios. |
| `__repr__` | Representación precisa para desarrolladores. |

---

### 8️⃣ Métodos de instancia, clase y estáticos
- **Instancia:** usa `self`.  
- **Clase:** usa `cls`.  
- **Estático:** no usa ni `self` ni `cls` (función de utilidad).

🧠 **Regla mnemotécnica:**  
instancia → “yo”, clase → “nosotros”, estático → “herramienta”.

---

### 9️⃣ Composición vs. Herencia
- **Composición:** un objeto *tiene un* otro objeto.  
- **Herencia:** un objeto *es un* tipo especializado.  
🔧 Prefiere **composición** en etapas iniciales.

---

### 🔟 Duck Typing
El polimorfismo “a la Python”: lo importante es la **interfaz**, no la jerarquía.  
> “Si camina como un pato y suena como un pato, probablemente sea un pato.”

---

### 1️⃣1️⃣ Propiedades (@property)
Permiten exponer atributos como si fueran campos simples pero con validación:

```python
class Cuenta:
    def __init__(self):
        self._saldo = 0

    @property
    def saldo(self):
        return self._saldo

    @saldo.setter
    def saldo(self, valor):
        if valor >= 0:
            self._saldo = valor
```

---

### 1️⃣2️⃣ Type Hints
Anotaciones opcionales que documentan tipos y permiten verificación estática con herramientas como *mypy*.

---

## 💡 Mini-reto guiado

**Modela una clase `CuentaBancaria`:**

| Elemento | Descripción |
|-----------|--------------|
| **Atributos** | `titular`, `saldo` |
| **Métodos** | `depositar(monto)`, `retirar(monto)`, `__str__()` |
| **Reglas** | No permitir saldos negativos; usa `@property` para `saldo`; aplica *type hints*. |
| **Ejercicio** | Instanciar 2 cuentas y simular 3 operaciones. |

Ejemplo de estructura inicial:
```python
class CuentaBancaria:
    def __init__(self, titular: str, saldo: float = 0.0):
        self._titular = titular
        self._saldo = saldo

    @property
    def saldo(self) -> float:
        return self._saldo

    def depositar(self, monto: float):
        self._saldo += monto

    def retirar(self, monto: float):
        if self._saldo - monto >= 0:
            self._saldo -= monto
        else:
            print("Saldo insuficiente")

    def __str__(self):
        return f"Cuenta de {self._titular} — Saldo: ${self._saldo:.2f}"
```

---

## 📂 Estructura de la semana
```
Week01/
├── STV/      → notebook de clase en vivo
├── ST/       → notebook de ejercicios tutoriales
├── data/     → datasets (si aplica)
├── assets/   → imágenes o CSV auxiliares
└── README.md → este documento
```

---

## ✍️ Actividades sugeridas
1. Completar el **mini-reto** en el notebook de la sesión tutorial.  
2. Subir el código a tu repositorio de la semana (`Week01_ST_Tutorial`).  
3. Preparar preguntas para la siguiente clase sobre **herencia** y **polimorfismo**.  
4. Revisar los métodos `__init__`, `__str__`, `__repr__` y la diferencia entre **atributos de clase** e **instancia**.

---

## 📘 Referencias
- Lott, S. (2022). *Modern Object-Oriented Programming Using Python.*  
- Bishop, C. (2006). *Pattern Recognition and Machine Learning.*  
- Documentación oficial de Python: [https://docs.python.org/3/tutorial/classes.html](https://docs.python.org/3/tutorial/classes.html)

---

> Universidad Nacional de Chimborazo — Facultad de Ingeniería  
> Carrera de Ciencia de Datos e Inteligencia Artificial — Periodo 2025-2S
