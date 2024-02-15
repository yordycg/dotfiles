## submit a input 'checkbox'

```html
<form action="/delete" method="POST" >
	<input type="checkbox" onChange="this.form.submit()" > 
</form>
```

## Method 'DELETE' and 'PUT'

- Necesitamos instalar `method-override` para usarlo en NodeJS

### Config method-override

```js
import methodOverride from 'method-override'
// Middleware
app.use(methodOverride('_method'))
```

### Example 'DELETE'

```html
<form action="/api/notes/delete/<%= note._id%>?_method=DELETE" method="POST">
	<input type="hidden" name="_method" value="DELETE" />
	<button type="submit">Delete</button>
</form>
```