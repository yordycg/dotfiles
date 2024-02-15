## forEach()
```js
// forEach() -> recorre un array
names.forEach(name => console.log(name));
```

## map()

```js
// map() -> recorre y retorna un nuevo array
// usar para modificar elementos, NO altera el array original
const name_list = names.map(name => name.toUpperCase());
```

## find()
```js
// find() -> recorre y busca un elemento segun una condicion
// true -> retorna el 1er elemento encontrado
// false -> retorna 'undefined'
const nameFound = names.find(name => name === 'carmen')
```

## filter()
```js
// filter() -> recorre y retorna un nuevo array con elemento
// que cumplan una condicion. Usado para quitar elementos
// true -> retorna un array con los elementos que cumplieron la condicion
// false -> retorna un array vacio
const namesFilter = names.filter(name => name !== 'yordy');
```

## concat()
```js
// concat() -> unir y concatenar diferentes arrays
console.log(names.concat(lastnames));
```