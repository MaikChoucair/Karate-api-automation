# Karate API Automation

## Descripción

Proyecto de automatización de pruebas para servicios REST utilizando **Karate Framework** y **Gradle**.

Este proyecto automatiza diferentes operaciones CRUD sobre una API REST pública, validando respuestas, códigos de estado HTTP y estructuras JSON.

---

## Tecnologías utilizadas

- Java 21
- Gradle 8.14
- Karate Framework 1.4.1
- JUnit 5

---

## API utilizada

https://jsonplaceholder.typicode.com

---

## Escenarios automatizados

### Obtener usuario
- Método: GET
- Endpoint: `/users/1`
- Validación del código HTTP.
- Validación de datos del usuario.

### Crear usuario
- Método: POST
- Endpoint: `/users`
- Validación de creación.
- Captura del ID generado.

### Actualizar usuario
- Método: PUT
- Endpoint: `/users/1`
- Validación de actualización.

### Eliminar usuario
- Método: DELETE
- Endpoint: `/users/1`
- Validación del código HTTP.

### Flujo dinámico

El escenario realiza las siguientes acciones:

1. Crear un usuario.
2. Capturar el ID generado por la respuesta.
3. Actualizar un usuario existente.
4. Eliminar un usuario existente.

> **Nota:** JSONPlaceholder es una API de demostración que no persiste realmente los recursos creados. Por esta razón, el flujo utiliza el ID generado para demostrar el manejo de datos dinámicos y realiza las operaciones de actualización y eliminación sobre un recurso existente.

---

## Estructura del proyecto

```
src
└── test
    ├── java
    │   └── runner
    │       └── KarateRunner.java
    │
    └── resources
        ├── karate-config.js
        └── features
            ├── getUser.feature
            ├── createUser.feature
            ├── updateUser.feature
            ├── deleteUser.feature
            └── userFlow.feature
```

---

## Ejecución del proyecto

### Windows

```bash
gradlew.bat clean test
```

---

## Reportes

Después de ejecutar las pruebas, los reportes pueden consultarse en:

```
build/reports/tests/test/index.html
```

---

## Autor

**Maikol Eduardo Arboleda Rincón**