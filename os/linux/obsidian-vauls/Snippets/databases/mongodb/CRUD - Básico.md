### Traer ==todo==

```js
const tasks = await TaskModel.find()
// retorna un array
```

Traer ==uno==

```js
// findOne()
const userFind = await UserModel.findOne({email: 'yordy.carmona@gmail.com'})
// true -> return objeto con los datos
// false -> retorna 'null'

// findById()
const taskFound = await TaskModel.findById(id);
// true -> return object with data
// false -> 
```

### Crear

```js
const newUser = UserModel({
      email: username,
      password,
});

const result = await newUser.save();
// true -> return objeto con el usuario guardado/creado
```

### Eliminar

```js
// findByIdAndDelete()
// En caso de eliminar el documento, SI retorna el objeto eliminado
const userDeleted = await TaskModel.findByIdAndDelete(id);
// true -> retorna el objeto eliminado
// false -> retorna

// deleteOne()
// Solo elimina el documento indicado, NO retorna el objeto eliminado
... await TaskModel.deleteOne({_id: id});
```

### Actualizar

```js
// findByIdAndUpdate()
// En caso de actualizar el documento, SI retorna el objeto actualizado (necesitamos "new")
const taskUpdated = await TaskModel.findByIdAndUpdate(id, req.body, {new: true});
// { new: true } -> hace que retorne el dato NUEVO ACTUALIZADO
// true -> 
// fasle ->
// findOneAndUpdate()
// Con esta funcion podemos usar cualquier propiedad para buscar un documento, no solo el _id
const taskUpdated = await TaskModel.findOneAndUpdate({email: 'xxx@xxx.xx'},{firstname: 'Nicolas'}, {new: true});
// { new: true } -> hace que retorne el dato NUEVO ACTUALIZADO
// true -> 
// fasle ->
```