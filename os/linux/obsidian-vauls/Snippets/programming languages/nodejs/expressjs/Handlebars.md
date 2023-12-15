## Configuration hbs

```js
import express from 'express';
import exphbs from 'express-handlebars';
// necesario usar __dirname

const app = express();

// config handlebars
app.engine('hbs', exphbs.engine({
	extname: 'hbs',
	defaultLayout: 'main.hbs',
	layoutsDir: path.join(__dirname, '../views/layouts'),
	partialsDir: path.join(__dirname, '../views/partials')
}));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, '../views'));

// usar handlebars
app.get('/', (req,res) => res.render('name_view', {data: 'data'}))
```

## Function in hbs

```jsx
...
// configurar Handlebars
app.engine('hbs', exphbs.engine({
	helpers: {
		// funcion que incrementa en uno, usada para ocupar
		// de indice, al recorrer un array
		inc: (value, options) => parseInt(value) + 1;
	},
	extname: 'hbs',
	...
}))
```

## Structure for 'views' folder
```
src/ 
|- controllers/ 
| |- home.controllers.js 
|- models/ 
| |- user.model.js 
|- views/ 
| |- layouts/ 
| | |- main.hbs 
| |- partials/ 
| | |- header.hbs // example 
| | |- navbar.hbs // example 
| | |- footer.hbs // example 
| |- home.hbs 
|- app.js // o server.js
```