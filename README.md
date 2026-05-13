# 📚 Tarea: Implementacion de Pilas

En esta tarea implementaras dos problemas clasicos usando **pilas (stacks)** en Java.
Debes implementar tu propia pila desde cero, sin usar `java.util.Stack` ni ninguna clase de colecciones de Java.

---

## 📝 Tarea 1: Reconocimiento de Palindromos

### Descripcion

Un **palindromo** es una palabra o numero que se lee igual de izquierda a derecha que de derecha a izquierda.

Ejemplos:
- `racecar` → Es palindromo
- `12321`   → Es palindromo
- `hello`   → No es palindromo

### Objetivo

Implementar en `Main1.java` una clase `Stack` propia y usarla para verificar si una cadena es palindromo.

La logica debe basarse en **pilas**: apila todos los caracteres y luego comparalos uno a uno con los caracteres originales.

### Output esperado

Tu `main` debe verificar exactamente estas dos entradas en este orden:

```
racecar -> Es palindromo
hello -> No es palindromo
```

### Restricciones

- No uses `java.util.Stack` ni colecciones de Java.
- Implementa tu propia estructura de pila.
- El output debe coincidir exactamente con el formato indicado.

---

## 📝 Tarea 2: Torres de Hanoi

### Descripcion

Las **Torres de Hanoi** es un problema clasico de recursion. Consiste en mover `n` discos desde una torre origen a una torre destino, usando una torre auxiliar, respetando estas reglas:

1. Solo se puede mover un disco a la vez.
2. No se puede colocar un disco grande sobre uno mas pequeño.

### Objetivo

Implementar en `Main2.java` una clase `Stack` propia y usarla para simular las Torres de Hanoi con **3 discos**.

### Output esperado

Tu `main` debe resolver Hanoi con 3 discos desde la torre `A` hacia la torre `C` usando `B` como auxiliar:

```
Mover disco 1 de A a C
Mover disco 2 de A a B
Mover disco 1 de C a B
Mover disco 3 de A a C
Mover disco 1 de B a A
Mover disco 2 de B a C
Mover disco 1 de A a C
```

### Restricciones

- No uses `java.util.Stack` ni colecciones de Java.
- Implementa tu propia estructura de pila.
- El output debe coincidir exactamente con el formato indicado.

## 📤 Entrega

Haz **push** de tu solucion al repositorio antes de la fecha limite indicada por tu profesor. El autograder correra automaticamente al hacer push.
