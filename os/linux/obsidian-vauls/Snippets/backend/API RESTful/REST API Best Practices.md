[link del tutorial fCC](https://www.freecodecamp.org/news/rest-api-design-best-practices-build-a-rest-api/)
# Indice
- [[#Versioning API]]
- [[#Name Resource in Plural]]
- [[#Accept and respond with data in JSON format]]
- [[#Respond with standard HTTP Error Codes]]
- [[#Avoid verbs in endpoint names]]
- [[#Group associated resources together (logical nesting)]]
- [[#Integrate filtering, sorting & pagination]]
- [[#Use data caching for performance improvements]]
- [[#Good security practices]]
- [[#Documento your API properly]]

---
## Versioning API

- La ventaja de tener nuestra API con diferentes versiones, es que los 'braking changes' no afecten a la version que están utilizando los clientes.
- No forzamos a los clientes a usar la ultima version.
- La diferentes versiones corren en paralelo, no se afectan entre si.

```js
// Version 1
"/api/v1/workouts"

// Version 2
"/api/v2/workouts"

// Estructura
src
|   v1
|   |  routes/
|   v2
|   |  routes/
|   |  controllers/ // -> nuevas features/caracteristicas
```

- En caso de que la nueva version tenga nuevas características no compatibles con la 'v1' debemos mover o crear un nuevo directorio 'controllers' en la version correspondiente.

---
## Name Resource in Plural

- Nuestra API sera usada por otras personas, debemos ser preciso.
- Siempre llamar los recursos de nuestra API en plural.
- /api/v1/workouts

---
## Accept and respond with data in JSON format

- Trabajar con JSON es un estándar, da igual si usas nodeJS/java/python.
- Crear nuestro 'servicios' con los mismo nombres de los métodos del 'controller'.
- **services**:
	- Esta la lógica de nuestro negocio.
	- Transforma la estructura de los datos.
	- Se comunica con la database.
- Dentro del directorio /database/ debe estar la capa para acceder a la base de datos.
- En el 'contoller' debemos extraer los datos del 'body' y debemos validarla.
	- Para las validaciones usamos un paquete de terceros (zod, express-validator, etc.)

```js
// Respuesta basica
res.status(201).send({ status: 'OK', data: createWorkout }); // -> enviamos el status y los datos
```

---
---
## Respond with standard HTTP Error Codes

- AL no recibir una respuesta clara de que trata o que produce el error, es complicado encontrar la solución, tanto para el developers como para el cliente/usuario.
- Siempre retornar un código de erro HTTP para los diferentes casos, ademas de retornar un mensaje breve del error.
- Usar try/catch para capturar todos los errores, en 'controller, service, and 'connection to database'.
	- Un error consiste en 2 cosas: ==status y message==.
	- Controller y Model, son los únicos que envían el error 500, service captura el throw del Model.

1. Respond in 'connection to database' | we generally use mongoose

```js
static createWorkout(newWorkout) {
    // Consult if the workout exists in the database
    const isAlreadyAdded = DB.workouts.findIndex((workout) => workout.name === newWorkout.name) > -1;
    if (isAlreadyAdded) {
      // Error producido por el cliente.
      throw {
        status: 400,
        message: `Workout with name "${newWorkout.name}" is already exists.`,
      };
    }

    // Else create the workout
    try {
      DB.workouts.push(newWorkout);
      saveToDatabase(DB);
      return newWorkout;
    } catch (error) {
	  // Esta es la forma en que generamos un error
	  // Pero generalmente usamos paquetes o utilidades de tercero, como mongoose o mysql2
      throw { status: 500, message: error?.message || error };
    }
}
```

2. Respond in 'services'

```js
static createWorkout = (newWorkout) => {
    // Configure options to newWorkout
    const workoutToInsert = {
      ...newWorkout,
      id: randomUUID(),
      createdAt: new Date().toLocaleString('es-CL', { timeZone: 'UTC' }),
      updatedAt: new Date().toLocaleString('es-CL', { timeZone: 'UTC' }),
    };

    // Create workout in the database
    try {
      const createdWorkout = WorkoutModel.createWorkout(workoutToInsert);
      return createdWorkout;
    } catch (error) {
      // Usamos el error que nos entrega la capa anterior, generalmente algo como mongoose o mysql2.
      throw error;
    }
 };
```

3. Respond in 'controllers'
```js
static createWorkout = (req, res) => {
    // Extract the data from req.body and validate
    const { body } = req;
    if (!body.name || !body.mode || !body.equipment || !body.exercises || !body.trainerTips) {
      // Estructura de un error producido por el cliente.
      return res.status(400).send({
        status: 'FAILED',
        data: {
          error:
            "One of the following keys is missing or is empty in request body: 'name', 'mode','equipment','exercises','trainerTips'.",
        },
      });
    }
    // Create object of the workout
    const newWorkout = {
      name: body.name,
      mode: body.mode,
      equipment: body.equipment,
      exercises: body.exercises,
      trainerTips: body.trainerTips,
    };

    try {
      // Create workout in the database
      const createWorkout = workoutServices.createWorkout(newWorkout);
      res.status(201).send({ status: 'OK', data: createWorkout });
    } catch (error) {
      // Error producido por la databes, generalmente del lado del servidor.
      res.status(error?.status || 500).send({ status: 'FAILED', data: { error: error?.message || error } });
    }
 };
```

---
## Avoid verbs in endpoint names

- El verb HTTP indica la acción, no debemos usar verbos en nuestros endpoints.

```js

// Current implementations (without verbs) --> Always use!
GET "/api/v1/workouts" 
GET "/api/v1/workouts/:workoutId" 
POST "/api/v1/workouts" 
PATCH "/api/v1/workouts/:workoutId" 
DELETE "/api/v1/workouts/:workoutId"  

// Implementation using verbs 
GET "/api/v1/getAllWorkouts" 
GET "/api/v1/getWorkoutById/:workoutId" 
CREATE "/api/v1/createWorkout" 
PATCH "/api/v1/updateWorkout/:workoutId" 
DELETE "/api/v1/deleteWorkout/:workoutId"
```

---
## Group associated resources together (logical nesting)

- Al diseñar una API, habrá casos donde tendremos recursos asociados con otros, es buena practica ==agruparlos en un solo 'endpoint'==.
- El máximo de anidamiento es de 3 recursos, el ejemplo tiene 2.
- Ej. Tener una URI como **/api/v1/workouts/:workoutId/records**. 
	- Es donde tendremos los registro de la duración de los usuarios que se demora en hacer un ejercicio.

---
## Integrate filtering, sorting & pagination

- Bueno de usar cuando nuestra DB responde con 2.000 entrenamientos, 10.000 usuarios...
- **filtering**
	- Permite obtener datos de toda nuestra DB.
		- Ejemplo: todos los entrenamientos de modo 'Por Tiempo'.
- **pagination**
	- Permite dividir toda nuestra colección de entrenamientos en multiples paginas
		- Ejemplo: cada pagina consta de 20 entrenamientos.
- **sorting**
	- Tarea compleja que consiste en enviar los datos ordenados al cliente.

---
## Use data caching for performance improvements

- Usar el cache, ayuda al rendimiento de nuestra API.
- Es recomendado de usar cuando los recursos son solicitados con frecuencia.
- ==Un Problema es que los recursos pueden quedar obsoletos, si en la database se actualizan o modifican.==
	- Una solución a eso es usar [redis](https://www.npmjs.com/package/redis) o el middleware de express [apicache](https://www.npmjs.com/package/apicache)

```js
// Uso de 'apicache' en una sola ruta
// Es posible realizar un cache a varias al mismo tiempo, haciendolo en el "app.js"
// src/v1/routes/workout.routes.js
import apicache from 'apicache';

const cache = apicache.middleware;

// Elegir un recurso el cual 'cachear' y por cuanto tiempo, para evitar dato obsoletos
router.get('/', cache('2 minutes'), workoutController.getAllWorkouts); // -> todos los entrenamientos
```

- Aparte de soluciones, algunos problemas que trae el cache son:
	- Siempre asegurarse que la data entregada es la actualizada, no una antigua.
	- Mientras se procesa la primera solicitud + el cacheado, para otra solicitud que responder, esperar a que se 'cachee' o responder directo de la database.
	- El 'cache' es otro componente de nuestra infraestructura, podemos usar algo como 'apicache' o algo distribuido por un tercero como 'redis'.
- __Al construir una API, no tenemos una razón para usar una cache, mantengamos lo lo mas simple posible. Usemos cache cuando existan razón para ello.__

---
## Good security practices

- Usar SSL/TLS, es un estándar hoy para comunicarse por internet.
- Proteger con autenticación, los recursos que solo tengan que verlos algunos usuarios.
- Crear un sistema de roles (cuando sea necesario), para que NO todos nuestros usuarios accedan a ciertos recursos.

```js
// Ejemplo
// src/v1/routes/workout.routes.js
//...

// Nuestros propios middleware
import authenticateUser from '../../middlewares/authenticateUser.js';
import authorizeUser from '../../middlewares/authorizeUser.js';

// Solo el usuario que este autorizdo y autenticado puede crear un entrenamiento
// Alguien como un entrenador
router.post('/', authenticateUser, authorizeUser, workoutController.createNewWorkout);
//...
```

---
## Documento your API properly

- Si una API no esta bien documentada, no podrá ser usada correctamente.
- [OpenAPI](https://swagger.io/specification/) es un estándar para documentar API's.
- Herramientas a usar:
	- [swagger-ui-express](https://www.npmjs.com/package/swagger-ui-express)
	- [swagger-jsdoc](https://www.npmjs.com/package/swagger-jsdoc)
- Revisar el ejemplo en '07 Proyectos-Web/10__rest-api_...'

```js
// src/v1/swagger.js
// Estuctura basica
import swaggerJSDoc from 'swagger-jsdoc';
import swaggerUi from 'swagger-ui-express';

// Basic meta-information about our API
const options = {
  definition: {
    openapi: '3.1.0',
    info: { title: 'Crossfit WOD API', version: '1.0.0' },
  },
  apis: ['./src/v1/routes/workout.routes.js', './src/database/Workout.js'],
};

// Docs inf JSON format
const swaggerSpec = swaggerJSDoc(options);

// Function to setup our docs
export const swaggerDoc = (app, port) => {
  // Route-Handle to visit our docs
  app.use('/api/v1/docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));

  // Make our docs in JSON format available
  app.get('/api/v1/docs.json', (req, res) => {
    res.setHeader('Content-Type', 'application/json');
    res.send(swaggerSpec);
  });
  console.log(`Version 1 Docs are available on http://localhost:${PORT}/api/v1/docs`);
};

// Uso
// src/app.js o index.js
import { swaggerDoc as V1SwaggerDocs } from './src/v1/swagger.js';

// ...

app.listen(PORT, () => {
  console.log(`--> Server running on http://localhost:${PORT}`);
  V1SwaggerDocs(app, PORT);
});
```


---