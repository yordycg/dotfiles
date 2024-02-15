## DATETIME vs TIMESTAMP

- 'DATETIME': es para registro de fecha y hora de forma manual.
- 'TIMESTAMP': registro de fecha y hora del servidor o de un pc, utiliza la zona horaria.

## Transformar un dato

```sql
... BIN_TO_UUID(...)
... UUID_TO_BIN(UUID())
```

## Traer UUID de mysql

```js
// JavaScript
const [uuidResult] = await connection.query('SELECT UUID() uuid;');
const [{ uuid }] = uuidResult;
```
