## using async/await

```js
async function fechData(){
	try{
		const response = await fetch('https://api...');
		if(!response.ok){
			throw new Error('Error HTTP:', respose.status);
		}

		const data = await response.json();
		console.log(data)
	} catch (error){
		console.error(error)
	}
}
```