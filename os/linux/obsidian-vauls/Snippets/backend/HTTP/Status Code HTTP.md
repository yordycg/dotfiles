## Status Code

- 100 - 199 -> Respuestas informativas
- 200 - 299 -> Respuestas satisfactorias
- 300 - 399 -> Re-direcciones
- 400 - 499 -> Errores del cliente
- 500 - 599 -> Errores del servidor

## Situational uses

- 100 -> Continue - servidor acepta la solicitud inicial.
- 101 -> Switching Protocols - servidor reconoce un cambio de protocolo.
- 102 -> Processing - request es procesado (webDAV).
---
- 200 -> OK - request fue exitosa.
- 201 -> Created - request cumplida, se creo un nuevo recurso.
- 202 -> Accepted - request aceptada, pero aun no completada.
- 204 -> No Content - response es satisfactoria, pero no hay contenido para enviar en el body.
- 206 -> Partial Content - parte del recurso enviado.
---
- 301 -> Moved Permanently - recurso solicitado se ha movido permanentemente a una nueva ubicación.
- 302 -> Found - recurso se movió temporalmente.
- 303 -> See Other - redireccion a un recurso diferente, tipicamente después de un POST.
- 304 -> Not Modified - recurso no a cambiado desde la ultima solicitud.
---
## Errores del cliente

| N                       | uso                                                             |
| ----------------------- | --------------------------------------------------------------- |
| 400 - Bad Request       | Informacion del cliente no puede ser interpretada.              |
| 401 - Unauthorized      | Acceso no autorizado.                                           |
| 403 - Forbidden         | Acceso autorizado pero permiso denegado.                        |
| 404 - Not Found         | Recurso no autorizado.                                          |
| 413 - Payload Too Large | Body de la solicitud muy largo para que el servidor lo procese. |
| 429 - Too Many Requests | Cliente realizo muchas solicitudes al mismo tiempo.             |

---
## Errores del servidor

| N                       | uso                                                             |
| ----------------------- | --------------------------------------------------------------- |
| 500 - Internal Server Error | Cuando se produce excepciones no controladas.               |
| 503 - Service Unavailable | Servidor temporalmente inhabilitado para recibir solicitudes. |
| 504 - Gateway Timeout | No puede responder a tiempo a la petición del cliente.            |
