- Cuando trabajamos con ESmodules, __ dirname no funcionan de la misma forma que con CommonJS

 ```js
import { dirname } from 'node:path';
import { fileURLToPath } from 'node:url';
const __dirname = dirname(fileURLToPath(import.meta.url))
// import.meta.url -> direccion del archivo actual
```