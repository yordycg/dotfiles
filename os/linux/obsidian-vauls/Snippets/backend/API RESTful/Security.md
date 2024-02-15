## CORS

- Los navegadores restringen el ==cruce== de información entre **dominios** diferentes.
	- SPA applications no tienen problemas.
- La API debe habilitar esos permisos.

## Authentication

- El cliente se identifica ante una API.
	- example: usuario y password.
- JWT es un mecanismo usado.

## Authorization

- Corresponden a los permisos que puede tener un usuario en una API.
- Proteger recursos por roles.
	- example: ADMIN | USER.

## Json Web Token

- Pasamos un _token_ en cada consulta, para acceder a los datos de un API.
	- **Token**
		- Necesita un tiempo de expiración.
		- Datos del usuario (ID, nombre).

## OAUTH

- Gestiona la **autorización** de los usuarios
- Delega la **autenticación** a terceros
	- ex. google, facebook, github, linkedin, etc.
- ==NO permite tener acceso a la info del cliente, solo el usuario y password==

### Roles

- **Propietario del recurso**: usuario da la autorización.
- **Cliente**: sitio web que solicito acceder a la cuenta del usuario.
- **Servidor de recursos**: API a la que intentamos acceder.
- **Servidor de autorización**: servidor que genera el _token_ de acceso.

### Image Process OAUTH

![[Abstract Protocol Flow.png]]