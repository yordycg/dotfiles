
# readJSON

```js
import { createRequire } from 'node:module';
const require = createRequire(import.meta.url);

export const readJSON = (path) => require(path);
```

# saveToJSON

```js
import fs from 'node:fs';
export const saveToDatabase = (DB) => {
  // Debemos indicar la ruta desde donde se ejecuta la aplicacion
  // en mi caso es index.js -> que llama a la aplicacion en src/app.js
  fs.writeFileSync('./src/database/db.json', JSON.stringify(DB, null, 2), { encoding: 'utf-8' });
};
```