## 1- Solution -> Body with little content

- Usar "position-absolute" al elemento que queremos posicionar.

```css
body{
	position: relative; // ojo con los elementos absolute
	padding-bottom: 3em; // dependera de la altura del footer
	min-height: 100vh;
}
.footer{
	position: absolute;
	bottom: 0;
	width: 100%
}
```

## 2- Solution -> Using Flexbox

```css
body{
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}
.footer{
	margin-top: auto;
}
```

2.1 - Solution -> Sticky Footer

```css
body{
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}
main{
	/* main -> toma todo el espacio en que sobre del contenedor */
	flex-grow: 1; 
}
```

## 3- Solution -> Using Grid

```css
body{
	display: grid;
	min-height: 100vh; // importante
	grid-template-rows: auto 1fr auto;
}
```