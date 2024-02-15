# Instalación

# Configuración Básica

```js
import mongoose from 'mongoose';

export default async function connectDB() {
  try {
    const url = process.env.DB_URL;
    const db = await mongoose.connect(url, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    console.log(`-> MongoDB Connected: ${db.connection.host}`);
  } catch (error) {
    console.error(`-> MongoDB Connected Error: ${error}`);
    process.exit(1);
  }
}
```

# Usando MongoDB

## Como hacer referencia a otro _id

```js
const taskSchema = new mongoose.Schema(
  {
    title: { type: String, require: true },
    description: { type: String, require: true },
    date: { type: Date, default: Date.now },
    /**
	  * Guardar id del usuario al que le corresponde la tarea
	  * ref: 'User' -> hacemos referencia con el nombre del "modelo" dado
	  * ObjectID -> indica que es del tipo especial del ID
      */
    user: { type: mongoose.Schema.Types.ObjectId, ref: 'User', require: true },
  },
  {
    timestamps: true,
    versionKey: false,
  }
);
```

## Populate()

- Usado para mejorar las relaciones de datos **uno a muchos** o **muchos a muchos** en MongoDB.
- `populate()` se utiliza para reemplazar la ruta especifica en un documento, con **otro documento** de otras _colección_ ([ejemplo](https://apuntes.de/nodejs-desarrollo-web/relaciones-y-uniones-en-mongoose/#gsc.tab=0)).
 
```js
// 'user' -> nombre dato al momento de crear el "modelo"
const tasks = await TaskModel.find({ user: id }).populate('user');

// Trae
{ 
	"_id": "64efec8163d5a4b9d2ef37ac", 
	"title": "mi primera tarea",
	"description": "mi primera tarea desde cero", 
	"date": "2023-08-31T01:27:29.621Z", 
	// Esto es lo que trae "populate", datos de otro documento
	"user": { 
		"_id": "64eea6203ad854e1824252db", 
		"username": "test6", 
		"email": "test6@test.com", 
		"password": "$2a$12$oorQh6P/A.87rmEfieNab.sNFBOD8m/DkqV1FfsiznUeoDdgjEsAm", 
		"createdAt": "2023-08-30T02:14:56.781Z", 
		"updatedAt": "2023-08-30T02:14:56.781Z" 
	}, 
		"createdAt": "2023-08-31T01:27:29.624Z", 
		"updatedAt": "2023-08-31T01:27:29.624Z" 
}
```

## Uso de métodos/funciones en una esquema

```js
// Metodos de encriptacion
userSchema.methods.encrypPassword = async (password) => {
  try {
    return await bcrypt.hash(password, 12);
  } catch (error) {
    console.error('Error al encriptar la contraseña (line.13):', error);
  }
};
// Usamos una funcion normal, para hacer uso de 'this'
userSchema.methods.matchPassword = async function (password) {
  try {
    return await bcrypt.compare(password, this.password);
  } catch (error) {
    console.error('Error al comparar las contraseñas (line.21):', error);
  }
};
```

## Sort dates

```js
// sort({nameDate: -1}) -> descendiente
//      "    " : 'desc' -> descendiente 
// sort({nameDate: 1}) -> ascendente
const notes = await NotesModel.find({ user: _id }).populate('user').sort({ createdAt: -1 });
```