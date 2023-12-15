## Banderas

- Se pueden utilizar y combinar multiples banderas!
- i → ignora la capitalizacion
- g→ todas las coincidencias

```jsx
// i: /wordsearch/i
// g: /repeat/g 
```

## Metodos

```jsx
// test() - probar una expresion regular | retorna true o false
let myString = 'Hello, world!';
let myRegex = /Hello/;
let result = myRegex.test(myString)

// match() - extrae las coincidencias encontradas | retorna un array
let extractStr = "Extract the word 'coding' from this string.";
let codingRegex = /coding/; 
let result4 = extractStr.match(codingRegex);

// replace(regex_search, 'nueva palabra')
let str = "one two three";
let fixRegex = /(\\w+)\\s(\\w+)\\s(\\w+)/;
let replaceText = "$3 $2 $1";
let result = str.replace(fixRegex, replaceText);

```

## Others

```js
// Multiples posibilidades
/doc|cat|bird|fish/;

// Multiples posibilidades en un caracter
/b[aiu]g/; // true: 'bag, big, bug' | false: return 'null'

// Comodin (puede ir en ambos extremos)
/.un/; // puede ser "run, sum, fun, pun, num, bun"

// Coincider con el abecedario y numeros
/[a-z]/; // todo el abecedario
/[a-e]/; // desde la “a” a la “e”
/[0-5]/; // desde el 0 al 5 | incluye el 0 y el 5
/[a-z0-9]/; // podemos combinar letras y numeros

// No coincidir con caracteres
/[^aeiou0-9]/gi; // NO coincidir con las vocales y los numeros indicados

//Coincidencia con caracteres que aparecen mas de una vez
/a+/gi;
// “abc” → [”a”]
// “aabc” → [”aa”]
// "abac” → [”a”, “a”]

// Coincidencia de caract. que aparecen 0 o mas veces
/Aa*/; // concidencia con “Aaaaaaaaaaaaaaarrrrrgh!”

// Concidir al inicio
/^hola/i; // busca coincidencias al inicio de “algo”

// Coincidir al final
/adios$/; // busca al final de “algo”

// Concidir con toda las letras y numeros
	// Forma larga → /[A-Za-z0-9_]+/
    // Forma corta → /\w+/

// Caracteres NO numericos ni letras
    // Forma larga → /[^A-Za-z0-9_]
    // Forma corta → /\W/

// Caracteres numericos
/\d/; // buscar numero del 0 al 9

// Caracteres NO numericos
/\D/; // buscar todo, menos los numeros

// Espacios
/\s/; // buscar espacios en blanco
/\S/; // buscar los NO espacios en blanco

//Especificar numero menor y mayor (estar en un rango)
/a{3,5}h/; // coincida con la letra “a” entre 3 y 5 (NO cuentan el 3 ni el 5)
/Haz{4,}ah/; // que coincida con minimo 4 letras “z”
/Tim{4}ber/; // especificar la cantidad exacta de “m” (4)

// Especificar posible ecistencia de 1 elemento
/colou?r/; // puede ser "color" o "colou" | indicamos que la “u” puede NO estar

// Lookahead positivo y negativo
/(?=u)/; // contenga una “u” | positivo
/(?!u)/; // NO contenga una “u” | negativo
```