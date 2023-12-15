## Try / Catch

```js
try { 
	// aqui va lo que intentamos!
	const { email, password } = req.body; 
	const skaters = await Skater.getAllSkaters(); 
	const filter = skaters.find((s) => s.email === email && s.password === password); 
	if (!filter) { 
		throw { 
			status: 400, 
			message: `No puede encontrar el 'email' y 'password' igual en la DB` 
		} 
	} 
} cath (error) {
	throw { 
		status: error?.status || 500, 
		message: error?.message || error 
	} 
}
```