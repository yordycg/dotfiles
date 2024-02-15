## API First Design

- Un error común en nuestro diseño es pensar en la pantalla primero y luego en nuestra API.
- Nuestra API expone las reglas de negocio y define lo que se va a satisfacer.
	- Si el cliente requiere algo especifico, sera problema de el NO nuestro.

## 3 Reglas a seguir

- tu API es la primera UI de tu aplicación.
- tu API viene primero, luego es la implementación.
- tu API describe como se deben hacer las cosas, no el cliente.

- ==No hacer estos pasos, hace que la API este llena de endpoints innecesarios.==

## Ejemplo

| Method | Endpoint                          | Response                   |
| ------ | --------------------------------- | -------------------------- |
| GET    | http://localhost:3000/api/users   | **Todos los usuarios**     |
| GET    | http://localhost:3000/api/users/1 | **Usuario 1 (individual)** |
| POST   | http://localhost:3000/api/users   | **Crear un nuevo usuario** |
| PUT    | http://localhost:3000/api/users/1 | **Actualizar usuario 1**   |
| DELETE | http://localhost:3000/api/users/1 | Eliminar usuario 1         |

