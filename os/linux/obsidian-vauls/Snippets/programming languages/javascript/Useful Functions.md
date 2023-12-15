## Capitalize

```js
const capitalize = ([first, ...rest]) => first.toUpperCase() + rest.join('');

capitalize('fooBar'); // 'FooBar'
capitalize('fooBar', true); // 'FooBar'
```
## Capitalize all words

```js
const capitalizeEveryWord = str => str.replace(/\b[a-z]/g, char => char.toUpperCase());

capitalizeEveryWord('hello world!'); // 'Hello World!'
capitalizeEveryWord('yordy carmona'); // 'Yordy Carmona'
```
## Determined values in parameters

```js
const saludo = (nombre = 'Mundo') => console.log(`Hola, ${nombre}`);

saludo(); // 'Hola, Mundo'
saludo('Yordy'); // 'Hola, Yordy'
```
## Optional Chaining

```js
// Lee la prop. de un obejto anidado, sin tener que validar 
// explicitamente que cada referencia en la cadena sea valida. 
const usuario = { 
	direccion: { 
		calle: 'Spidey' 
	} 
} 

// Antes
let calle = usuario && usuario.direccion && usuario.direccion.calle; 

// RECOMENDADO 
let calle = usuario?.direccion?.calle;
```
## Nullish Coalescing Operator

```js
// Este operador devuelve su operando derecho cuando su operando izquierdo es null o undefined. En caso contrario, devuelve su operando izquierdo. 
// Antes 
const valor = dato === null && dato === undefined ? valorPorDefecto : dato; 

// RECOMENDADO 
const valor = dato ?? valorPorDefecto;
```

## Retrieve data from a form

```js
const getFormValues = form => Object.fromEntries(new FormData(form));
```
## Check if object is empty

```js
// Return true or false
Object.keys(name_object).length === 0;
```
## Search in an array, all lowercase
```js
// Estamos buscando el 'genre' de las peliculas, modificar** 
const filteredMovies = movies.filter( movie => movie.genre.some(g => g.toLowerCase() === genre.toLowerCase()) )
```
## Substring() 
```js
const pathname = '/detail/yordy-carmona';

// ...substring(num_inicio, num_final);
const id = pathname.substring(8, pathname.length);

// id = 'yordy-carmona'
```
## Read JSON
```js
// guardar json 
import {createRequire} from 'node:module'; const require = createRequire(import.meta.url); export const readJSON = (path) => require(path); 

// uso en otro archivo 
const movies = readJSON('./movies.json')
```
## Array of all unique values
```js
const unique = [...new Set(array)];
```

## Random number between two values
```js
function randomBetween(min, max) {  
return Math.floor(Math.random() * (max - min + 1) + min);  
}  
randomBetween(1,5);
```