- [w3c](https://www.w3.org/): se encarga del estándar de la web.
- [mdn](https://developer.mozilla.org/en-US/docs/Web/HTML): documentación "oficial" para **HTML, CSS, y JavaScript**.

# Etiquetas Principales

- html: etiqueta root del documento html.
- head: meta-información NO vista por el usuario.
- body: contenido de la pagina web, lo puede ver el usuario.

```html
<!DOCTYPE html> -> forma de especificar e indicar que html tiene que renderizar el navegador, el ultimo es el HTML5.

<meta /> -> etiqueta para agregar meta-datos a la pagina web.
...charset="UTF-8" -> atributo para indicar con que caracteres codificar la pagina web, UTF-8 es el mas comun.
...name="viewport" -> atributo que indica la zona visible del navegador, donde se renderiza el contenido.
...content="width=device-with initial-scale=1.0" -> ocupe el ancho del dispositvo | importante para el diseño responsive.

<title> -> titulo de la pagina web | se visualiza en la pestaña del navegador | 55 a 65 caracteres de maximo.
...name="description" -> meta de la descripcion.
...content="....." -> deben ser menos de 165 caracteres.
// <title> y la meta-description ayudan al SEO de la pagina web, cada archivo html debe tener su propio <title>+meta-description.
```

## Etiquetas mas usadas

- Encabezados
	- h1, h2, h3,..., h6
	- títulos y subtitulos
	- ==solo tener un h1 por pagina web==

- Texto Básico
	- p - párrafo
	- sub - subindice
	- sup - supindice
	- mark - subrayado
	- small - letra pequeña (para 'términos y condiciones')

- Texto Semántico
	- strong - texto importante (negrita)
	- em - texto con énfasis (italic)
	- blockquote - cita
	- cita - autor cita

- Salto
	- br - salto de linea
	- hr - salto semántico de contenido

- Formateo
	- pre - respeta el formateo que le demos
	- code - formatea código


## Etiquetas Semánticas Estructurales

```html
<header> -> cabecera del sitio o la seccion.
<main> -> seccion principal del documneto | solo puede existir una (1) por documento html.
<footer> -> pie de pagina del sitio o la seccion.
<nav> -> navegacion con links hacia otras partes del sitio o internet.
<article> -> seccion con autocontenido | por si sola se explica.
<aside> -> contenido complementario o secundario.
<section> -> una seccion de contenido generico.
<address> -> representa una informacion del contacto.

<!-- INTERPRETANDO LA SEMANTICA -->

maquetacion - orden de nuestro contenido | depende siempre del contenido.
* la semantica siempre es perfectible.
```

## Etiquetas de linea y de bloque

- Bloque
	- ==Ocupa todo el ancho disponible.==
	- ==Salto de linea arriba y abajo.==
	- Genera un salto de linea con las etiquetas hermanas.
	- div: es una de la etiquetas mas representativas que sea de tipo 'bloque'.

- Linea
	- ==Solo ocupa el espacio de su contenido.==
	- span: es la etiqueta mas representativas del tipo 'linea'.

## Imagenes

- img - agregar una imagen.
- src - ruta de la imagen.
- alt - texto alternativo | necesario para los reeders, y al momento de que no cargue una imagen.

```css
<!-- Imagen Responsive -->
img {
	max-width: 100%;
	height: auto
}
```
## Listas

### Lista ordenada

- ol - lista ordenada
- start - atributo, donde inicia el primer numero.
- reversed - cuanta de atrás hacia adelante.
- type - cambia el tipo de contador (n romanos, abecedario, etc.)
- ==li== - elemento de una lista | aplica para la lista ordenada y la lista desordenada.

### Lista desordenada

- ul - lista desordenada, representación.
- type - cambia el tipo de la viñeta.

## Tablas

- thead - cabecera de una tabla | agrupa una sección.
	- th - pone datos en negrita.
- tbody - cuerpo de la tabla | agrupa una sección.
- tfooter - pie de la tabla | agrupa una sección.

- tabel - construir una tabla.
- tr - crear una columna.
- td - agregar un dato.
- colspan - indicar cuantas columnas ocupa.
- rowspan - indica cuanta filas ocupa.

## Enlaces

- a - vamos a otros recursos o viajar por internet.
- target - donde queremos que se habrá el enlace?
	- `_blank:` se abre en otra pestaña.
- rel - es necesario usar siempre que usemos `_blank`.
	- nofollow - el enlace externo NO tiene relación con mi contenido.
	- noopener - enlace no puede acceder a la pagina web original.
	- noreferrer - impide que se sepa que la pagina web tiene un enlace.

### Enlaces internos

- usar cuando la pagina es muy larga y tiene mucho contenido.
- es necesario usar el atributo ID
```html
<a href="index.html#encabezado"> -> #encabezado es el nombre del id
<a href="#encabezado"> -> forma corta
```

### Enlaces y Protocolos Especiales

- href="mailto:nombre@email.com": enviar correo.
- href="tel:569xxxxxxxx": llamar a este numero.

## Audio y Video

- audio - agregar audio
- video - agregar video
- src - agregar ruta relativa del archivo
- controls - mostrar controles

## iframes

