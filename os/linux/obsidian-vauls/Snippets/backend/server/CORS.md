## CORS

- Restringe que podamos usar un recurso de otro origen (origin)
- Evita que un origin o dominio de otro dominio pueda acceder al recurso
- **Es la falta de headers**
- Soluciones parte del Back-end: api, proxy, enrutador, etc.

## Solucion 1

```jsx
// Definir rutas / origin permitodos
const ACCEPTED_ORIGINS = [
	// rutas de ejemplo
	'<http://localhost:8080>',
	'<http://localhost:3000>',
	'<https://movies.com>',
	'<https://midu.dev>'
];

app.get('/movies', (req, res) =>{
	// extraemos el origin del header
	const origin = req.header('origin');

	if(ACCEPTED_ORIGIN.includes(origin) || !origin){
		// Permite cualquier otras rutas/origin
		// res.header('Access-Control-Allow-Origin', '*')
		res.header('Access-Control-Allow-Origin', origin)
	}
})
```

## Solucion 1.5

- Usar en metodos complejos (PUT/PATCH/DELETE)

```jsx
app.options('/movies/:id', (req, res) =>{
	const origin = req.header('origin');

	if(ACCEPTED_ORIGIN.includes(origin) || !origin){
		res.header('Access-Control-Allow-Origin', origin);
		// Agregamos los metodos permitidos
		res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, PATCH, DELETE');
	}
})
```

## Solucion 2

- Usar el middleware `cors` (necesario instalar)

```js
import cors from 'cors'; 
app.use(cors()) 
// OJO, permite TODAS las rutas/origin, usa el '*' 
// Configuracion 
app.use(cors({ origin: (origin, callback) =>{ 
// Definir rutas / origin permitodos 
	const ACCEPTED_ORIGINS = [ 
		// rutas de ejemplo 
		'http://localhost:8080', 
		'http://localhost:3000', 
		'https://movies.com', 
		'https://midu.dev' 
	]; 
	
	if(ACCEPTED_ORIGINS.includes(origin)){ 
		return callback(null, true) 
	} 
	if(!origin){ 
		return callback(null, true) 
	} 
	return callback(new Error('Not allowed by CORS')) 
	})
)
```