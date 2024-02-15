## Basic authentication
```js
// asyncronous function need
const response = await axios.get(...url,{
	auth: {
		username: yourUsername,
		password: yourPassword,
	}
})
console.log(response)
```

## API KEY authentication
```js
// asyncronous function 
	const response = await axios.get(...url, { 
	params: { 
		apiKey: yourAPIKey, // otra forma de pasar parametros
	}
});
console.log(response);
```

## Token Based authentication
```js
// asyncronous function 
const response = await axios.get(...url, { 
	headers: { 
		Authorization: `Bearer ${yourBearerToken}`, // Token Based ... 
	} 
});
console.log(response);
```