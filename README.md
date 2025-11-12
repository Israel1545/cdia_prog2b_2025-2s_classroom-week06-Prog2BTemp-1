# 🐍 Programación 2 — Week 02  
**Tema:** Encapsulamiento y Métodos de Acceso en Python  
**Profesor:** José Andrés Zúñiga Cazorla  

---

## 🎯 Objetivo general
Comprender cómo el **encapsulamiento** protege los datos de una clase y aplicar **métodos de acceso** (getters y setters) para controlar la interacción con los atributos.

---

## 🧩 Conceptos clave

### 1️⃣ ¿Qué es el Encapsulamiento?
El **encapsulamiento** consiste en **ocultar los detalles internos** de una clase y **restringir el acceso directo** a sus datos.  
Su propósito es **proteger la integridad del objeto** y evitar modificaciones accidentales o indebidas.

> “Encapsular no es esconder… es proteger lo esencial.”

---

### 2️⃣ ¿Por qué es importante?
- Protege los datos del mal uso.  
- Permite cambiar la implementación interna sin afectar el código externo.  
- Mejora la modularidad y mantenibilidad.  
- Refuerza el principio **Single Responsibility (SOLID)**: cada clase debe tener una sola responsabilidad y controlar sus propios datos.

---

### 3️⃣ Cómo se aplica en Python
En Python, la privacidad se basa en **convenciones**, no en restricciones.

| Convención | Significado |
|-------------|-------------|
| `_atributo` | “Protegido”: uso interno de la clase o subclase. |
| `__atributo` | “Privado”: se aplica *name mangling* para evitar colisiones en herencia. |

📘 **Ejemplo:**
```python
class Persona:
    def __init__(self, nombre):
        self._nombre = nombre      # protegido
        self.__edad = 30           # privado (name mangling)
```

---

### 4️⃣ Métodos de Acceso (Getters y Setters)
Los **métodos de acceso** permiten leer o modificar los valores de los atributos de forma controlada.

| Método | Descripción |
|---------|--------------|
| **Getter** | Devuelve el valor de un atributo. |
| **Setter** | Asigna un valor validando reglas o restricciones. |

```python
class Cuenta:
    def __init__(self, saldo):
        self.__saldo = saldo

    def get_saldo(self):
        return self.__saldo

    def set_saldo(self, nuevo_saldo):
        if nuevo_saldo >= 0:
            self.__saldo = nuevo_saldo
```

---

### 5️⃣ Uso elegante de `@property`
Python permite crear getters/setters más legibles con el decorador `@property`.

```python
class Cuenta:
    def __init__(self, saldo):
        self._saldo = saldo

    @property
    def saldo(self):
        return self._saldo

    @saldo.setter
    def saldo(self, valor):
        if valor >= 0:
            self._saldo = valor
        else:
            print("❌ El saldo no puede ser negativo.")
```

💡 **Ventajas:**
- Hace el código más limpio y natural.  
- Permite validaciones sin cambiar la interfaz del objeto.  

Uso:
```python
cuenta = Cuenta(100)
cuenta.saldo = 200       # usa el setter
print(cuenta.saldo)      # usa el getter
```

---

### 6️⃣ Buenas prácticas
✅ Usa `@property` solo si necesitas validaciones.  
✅ Evita crear getters/setters innecesarios.  
✅ Sigue las convenciones `_` y `__` para indicar el nivel de acceso.  
✅ Documenta claramente el comportamiento de tus métodos.  

> *Python confía en el programador: la privacidad se basa en la madurez, no en la rigidez del lenguaje.*

---

## 💡 Actividad guiada
**Crea una clase `Estudiante` con:**
| Requisito | Descripción |
|------------|-------------|
| Atributos privados | `__nombre`, `__nota1`, `__nota2` |
| Propiedades (`@property`) | Para leer y modificar las notas con validaciones |
| Método `promedio()` | Calcula el promedio y muestra si el estudiante **aprueba** o **reprueba** |

📘 **Ejemplo base:**
```python
class Estudiante:
    def __init__(self, nombre: str, nota1: float, nota2: float):
        self.__nombre = nombre
        self.__nota1 = nota1
        self.__nota2 = nota2

    @property
    def nota1(self) -> float:
        return self.__nota1

    @nota1.setter
    def nota1(self, valor: float):
        if 0 <= valor <= 10:
            self.__nota1 = valor
        else:
            print("Nota inválida (0–10).")

    @property
    def nota2(self) -> float:
        return self.__nota2

    @nota2.setter
    def nota2(self, valor: float):
        if 0 <= valor <= 10:
            self.__nota2 = valor
        else:
            print("Nota inválida (0–10).")

    def promedio(self):
        prom = (self.__nota1 + self.__nota2) / 2
        estado = "Aprobado ✅" if prom >= 7 else "Reprobado ❌"
        return f"{self.__nombre}: Promedio {prom:.2f} — {estado}"
```

---

## 🧠 Desafío adicional
- Añade validaciones para que el nombre no sea vacío.  
- Crea un método `__str__` para mostrar el estado del estudiante con formato legible.  
- Implementa una lista de varios estudiantes y muestra su promedio grupal.

---

## 📂 Estructura de la semana
```
Week02/
├── STV/      → notebook de clase en vivo
├── ST/       → notebook de ejercicios tutoriales
├── data/     → datasets (si aplica)
├── assets/   → imágenes o CSV auxiliares
└── README.md → este documento
```

---

## ✍️ Actividades sugeridas
1. Implementar la clase `Estudiante` en el notebook de tutorial.  
2. Subir el código al repositorio `Week02_ST_Tutorial`.  
3. Documentar los métodos usando *docstrings*.  
4. Analizar cómo el principio **S** (Single Responsibility) se aplica en tu solución.

---

## 📘 Referencias
- Lott, S. (2022). *Modern Object-Oriented Programming Using Python.*  
- Bishop, C. (2006). *Pattern Recognition and Machine Learning.*  
- Documentación oficial de Python: [https://docs.python.org/3/library/functions.html#property](https://docs.python.org/3/library/functions.html#property)

---

> Universidad Nacional de Chimborazo — Facultad de Ingeniería  
> Carrera de Ciencia de Datos e Inteligencia Artificial — Periodo 2025-2S
