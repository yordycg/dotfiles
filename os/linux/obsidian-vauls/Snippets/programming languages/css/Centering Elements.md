## Position (the best for modals)

Centramos el elemento mismo, ningun hijo ni padre.

```html
<div class="elment" ></div>
```
```css
.element {
	position: absoulet;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
```

## Flexbox

Centramos a los hijos del elemento que le dimos la propiedad 'flex'

```html
<div class='container'>
	<div class='element' ></div>
</div>
```
```css
.container {
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
	alig-items: center;
}
```

## Grid

```html
<div class='container'>
	<div class='element' ></div>
</div>
```
```css
.container {
	display: grid;
	place-items: center;
}
```