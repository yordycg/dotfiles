## EJS Config

```js
import ejs from 'ejs'; // Opcional

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, '../views'));
```

## EJS Structure

```
src/ 
|- controllers/ 
| |- home.controllers.js 
|- models/ 
| |- user.model.js 
|- views/ 
| |- partials/ 
| | |- header.ejs 
| | |- navbar.ejs 
| | |- footer.ejs  
| |- home.hbs 
|- app.js // o server.js
```

## EJS Tags

```txt
<%= vairable %>;              //-> JS Output 
<% console.log('hello')%>;    // -> JS Execute
<%- <h1>Hello</h1> %>;        // -> Render HTML 
<%% %%>;                      // -> Show <% or %> 
<%# This is a comment %>;     // -> Stop Execution
<%- include('header.ejs') %>; // -> Insert another EJS file
```

## EJS - header

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- CAMBIAR NOMBRE -->
    <title>Note App</title>
    
	 <!-- CONFIGURACION DE LOS ESTILOS (CDN O CSS) -->

  </head>

  <body>
    <%- include('navbar.ejs') %>

    <main class="container py-5">
```

## EJS - navbar

```html
<!-- NAVBAR DE BOOTSTRAP -->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container">
	    <!-- CAMBIAR NOMBRE -->
        <a class="navbar-brand" href="/">Note App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about">About</a>
                </li>
            </ul>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a href="#" class="nav-link">Login</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">Register</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
```

## EJS - footer

```html
</main>

    <!-- SCRIPT JS O CDN -->

</body>

</html>
```