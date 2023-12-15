# GET

- Consulta la información de un recurso.

- **Ejemplo**: _api.kodoti.com/users/1_

- Posibles Status Code

	- **200:** se adjunta la información del recurso a través del body del response.
---
# POST

- Crea un nuevo recurso y se adjunta a través del body la información que solicita el nuevo recurso.

- **Ejemplo**: _api.kodoti.com/users_

- Posibles Status Code

	- **200 OK:** la petición ha finalizado con éxito y se especifica contenido en el body.
    
	- **201 Created:** la petición ha finalizado con éxito, no se especifica contenido en el body pero se agrega información en el header para encontrar la ruta del recurso creado. Ej: _api.kodoti.com/users/1_ 
---
# PUT

- Actualiza un recurso y se adjunta a través del body la información que se intenta modificar.

- **Ejemplo**: _api.kodoti.com/users/1_

	- En caso que el recurso no exista, este intentará crearlo asignado el ID especificado en la URL.
    
	- El PUT intentará actualizar todos las propiedades de un recurso, para ser más exactos de la clase del que representa al recurso. El no especificar una propiedad podría causar que un valor se le asigné un NULL value.  

- Posibles Status Code

	- **200 OK:** la petición ha finalizado con éxito y se especifica contenido en el body.
    
	- **204 No Content:** la petición ha finalizado con éxito pero no se especifica contenido en el body.
---
# PATCH

- Actualización parcial de un recurso y se adjunta la información actualizar a través del body del request.

- **Ejemplo**: _api.kodoti.com/users/1_

	- En caso que el recurso no exista, este intentará crearlo asignado el ID especificado en la URL.

- Posibles Status Code

	- **200 OK:** la petición ha finalizado con éxito y se especifica contenido en el body.
    
	- **204 No Content:** la petición ha finalizado con éxito pero no se especifica contenido en el body.  
---
# DELETE

- Elimina un recurso a través del identificador especificado en la URL.

- **Ejemplo**: _api.kodoti.com/users/1_

- Posibles Status Code

	- **204 No Content:** la petición ha finalizado con éxito y no se especifica contenido en el body.