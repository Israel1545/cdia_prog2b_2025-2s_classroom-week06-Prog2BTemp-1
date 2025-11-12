# Programación II — Semana 3: Herencia y Polimorfismo

## 🔹 Introducción

En esta semana abordamos uno de los pilares fundamentales de la Programación Orientada a Objetos (POO): **la herencia y el polimorfismo**. Estos conceptos permiten **reutilizar código**, **extender funcionalidades** y **diseñar jerarquías de clases** más flexibles y mantenibles.

La **herencia** permite que una clase hija adquiera los atributos y métodos de una clase padre, mientras que el **polimorfismo** permite que diferentes clases respondan de forma distinta a un mismo mensaje o método.

---

## 🔹 Objetivos de Aprendizaje

* Comprender el funcionamiento de la **herencia simple y múltiple** en Python.
* Aplicar el uso de `super()` para extender comportamientos en clases hijas.
* Reconocer y aplicar el **polimorfismo** en colecciones de objetos.
* Implementar **clases abstractas y mixins**.
* Desarrollar ejemplos prácticos de **fábricas simples** que gestionen objetos de distintos tipos.

---

## 📖 Contenidos Principales

### 1. Herencia Simple

La herencia simple permite crear una nueva clase que **reutiliza** atributos y métodos de una clase base.

```python
class Empleado:
    def __init__(self, nombre, salario):
        self.nombre = nombre
        self.salario = salario

    def mostrar_info(self):
        return f"Empleado: {self.nombre}, Salario: {self.salario}"

class Gerente(Empleado):
    def __init__(self, nombre, salario, departamento):
        super().__init__(nombre, salario)
        self.departamento = departamento

    def mostrar_info(self):
        return f"Gerente: {self.nombre}, Dep.: {self.departamento}"
```

**Conceptos clave:**

* Uso de `super()` para invocar el constructor de la clase base.
* Sobrescritura (`override`) de métodos.

---

### 2. Polimorfismo

Permite utilizar el mismo método en distintas clases, obteniendo comportamientos diferentes.

```python
class Animal:
    def hacer_sonido(self):
        pass

class Perro(Animal):
    def hacer_sonido(self):
        return "Guau!"

class Gato(Animal):
    def hacer_sonido(self):
        return "Miau!"

animales = [Perro(), Gato()]
for a in animales:
    print(a.hacer_sonido())
```

**Claves:**

* Las subclases implementan el mismo método de manera distinta.
* Permite tratar a los objetos de forma uniforme, independientemente de su tipo.

---

### 3. Clases Abstractas

Las **clases abstractas** definen una interfaz que las subclases deben implementar. En Python se usa el módulo `abc`.

```python
from abc import ABC, abstractmethod

class Figura(ABC):
    @abstractmethod
    def area(self):
        pass

class Circulo(Figura):
    def __init__(self, radio):
        self.radio = radio

    def area(self):
        return 3.14 * self.radio ** 2
```

**Ventajas:**

* Obligan a las subclases a definir comportamientos específicos.
* Mejoran la estructura y legibilidad del código.

---

### 4. Múltiple Herencia y Mixins

Una clase puede heredar de más de una clase base. Los **Mixins** se usan para agregar funcionalidad sin modificar jerarquías principales.

```python
class LoggerMixin:
    def log(self, msg):
        print(f"[LOG]: {msg}")

class Empleado:
    def __init__(self, nombre):
        self.nombre = nombre

class EmpleadoConLog(Empleado, LoggerMixin):
    def trabajo(self):
        self.log(f"{self.nombre} está trabajando.")
```

**Claves:**

* Mixins no deben tener estado propio.
* Se usan para **extender capacidades** (registro, validación, etc.).

---

### 5. Polimorfismo Aplicado: Sistema de Pagos

Ejemplo práctico de polimorfismo aplicado a un contexto real.

```python
class Pago:
    def procesar(self):
        raise NotImplementedError

class PagoTarjeta(Pago):
    def procesar(self):
        return "Procesando pago con tarjeta..."

class PagoTransferencia(Pago):
    def procesar(self):
        return "Procesando transferencia bancaria..."
```

**Idea:** una fábrica simple puede crear el tipo de pago adecuado según una opción o entrada del usuario.

---

## 🔹 Actividades y Retos

1. Implementa una jerarquía de clases para **vehículos** (Auto, Moto, Camioneta) aplicando herencia y polimorfismo.
2. Crea un **Mixin** que registre el historial de uso de cada objeto.
3. Diseña una clase abstracta **Instrumento** con subclases que implementen el método `tocar()`.
4. Implementa un sistema de **pagos ampliado**, agregando nuevos medios (efectivo, criptomoneda, etc.).

---

## 🔹 Recomendaciones Finales

* Reutiliza código y evita repetir lógica entre clases.
* Usa `super()` de forma adecuada para mantener la coherencia jerárquica.
* El polimorfismo mejora la extensibilidad de tus programas.
* Prioriza la claridad sobre la complejidad en diseños de herencia.

---

> **Objetivo general:** comprender e implementar los principios de herencia y polimorfismo en Python, aplicándolos a ejemplos reales y preparando las bases para diseños orientados a objetos más robustos.
