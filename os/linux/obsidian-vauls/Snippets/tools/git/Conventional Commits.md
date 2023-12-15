- Es una convención (reglas) en el formato de los mensajes de los commits.
- [Documentación Oficial - ES](https://www.conventionalcommits.org/es/v1.0.0/)
- [Blog sobre 'Conventional Commits'](https://dev.to/achamorro_dev/conventional-commits-que-es-y-por-que-deberias-empezar-a-utilizarlo-23an)
# Estructura básica

```markdown
<tipo>(ámbito opcional): <descriptión>
<LINEA_EN_BLANCO>
[cuerpo opcional]
<LINEA_EN_BLANCO>
[nota(s) al pie opcional(es)]
```

- **fix**: indica que el commit ==es un _parche_ de un error== y esta relacionado con la version **PATCH** del proyecto.
- **feat**: indica que el commit ==_añade_ una nueva funcionalidad== y se relaciona con la version **MINOR** del proyecto.
- añadir **BREAKING CHANGE** en el footer de un commit o el carácter **!** después del `<tipo>` indica que ==se rompe la compatibilidad de la version actual== y esta relacionada con la version **MAJOR** del proyecto.

## Tipo

Es el primer elemento del commit, y se refiere al contenido del commit.

| Tipo         | Descripción                                                                                               |
| ------------ | --------------------------------------------------------------------------------------------------------- |
| **feat**     | cuando se _añade_ una nueva funcionalidad.                                                           |
| **fix**      | cuando se _arregla_ un error.                                                                        |
| **chore**    | usar en tareas rutinarias. Ej. añadir contenido al `.gitignore` o instalar una dependencia o initial commit           |
| **test**     | cuando _añadimos_ o _arreglamos_ un test.                                                            |
| **docs**     | cuando solo se modifica la _documentación_.                                                               |
| **build**    | cuando el cambio afecta al _compilado del proyecto, tareas de despliegue o instalación._                                                      |
| **ci**       | cuando el cambio afecta a _ficheros de configuración y scripts_ relacionados con la integración continua. |
| **style**    | cuando el cambio es de _legibilidad o formateo de código_ que no afecta a la funcionalidad.               |
| **refactor** | cuando el cambio es el _código_ que NO corrige errores ni añade funcionalidad, solo mejora el código.     |
| **perf**     | cuando _mejoramos el rendimiento_ del sitio.                                                                         |
| **revert**   | cuando el commit _revierte un commit anterior_. Debe indicarse el hash del commit que se revierte.        |

## Ámbito

- Es un campo opcional.
- Sirve para dar información contextual.
- Ejemplo: indicar el nombre de la 'feature' a la que afecta el commit.

## Descripción

- Breve descripción del cambio, debe cumplir las siguientes reglas:
	- Usar imperativos en tiempo presente: "añade" mejor que 'añadido'
	- Todo debe ser en minúsculas.
	- No escribir punto final.
## Cuerpo

- Es un campo opcional.
- Aporta mas información que la descripción.
- Usar las mismas reglas que la _descripción_.

## Nota al pie

- Es un campo opcional.
- Se utiliza para indicar los cambios que rompen la compatibilidad de la version actual (**BREAKING CHANGES**).

```markdown
BREAKING CHANGE: <descripcion>
```
