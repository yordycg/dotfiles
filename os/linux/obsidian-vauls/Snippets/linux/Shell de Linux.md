# Comandos

- Palabra clave que hace alguna acción por medio de la [[Shell]].
- Existen diferentes tipos de de commandos:
	- `type <comando>`: averiguar que tipo de comando es `<comando>`.
	- Shell: comandos que están en el código fuente de la shell.
	- Ejecutables: comandos que están en una ruta especifica de nuestra distro linux.
	- Shell-script: comandos escritos con shell.
	- Alias: referencia, shortcut o combinación de varios comandos.

## Argumentos

- Parámetros que podemos agregar o no a los comandos.
- En algunos casos serán obligatorios en otras opciones.

## Ejemplo comandos

```bash
# listar un directorio
# -l: formato lista
# -a: mostrar todos los datos, los ocultos igual
# -h: mostrar el peso de los archivos en un formato mas facil
ls -lah <ruta-opcional>
```

## Información de los comandos

- No sirven para todos los comandos, algunas son para un grupo de comandos, es posible hacer una combinación para obtener la información.
- `help <command>`: nos da información de `x` comando que incluya la shell.
	- `help type`: `type: type [-afptP] name [name...]`
		- `[-afptP]`: indica que son argumentos opcionales.
		- `[name...]`: podemos dar mas de un nombre.
- `<command> --help`: da información de `x` comando.
- `<command> -h`: da información de `x` comando.
- `man <command>`: da información mas detallada.
- `whatis <command>`: información resumida de un comando.
- `info <command>`: entrega información super detallada de los comandos.
- `apropos <word>`: entrega comandos según la palabra entregada.
	- `apropos directory`: entrega comandos para las carpetas o directorios.
> cuando usamos espacios en los argumentos es necesario usar comillas dobles (".."). Ejemplo: `apropos "list directory"`.

## Manejo de comandos

```bash
# partir un comando en varias lineas, usar cuando el comando es muy largo
ls \
-lah \
Desktop

# concatenar comandos
clear ; ls
# concatenar comandos usando operadores booleanos
## && -> si el primer comando es `true`, ejecuta el siguiente comando
clear && ls # correcto
askdjfla && ls # error
## || -> si el 1er comando falla ejecuta el 2do, sino solo ejecuta el 1ero
clear || ls # solo ejecuta `clear`
asjkdf || ls # solo ejecuta el 2do `ls`
```

## Atajos útiles de la shell

- `ctrl-a`: ir al principio de la linea.
- `ctrl-k`: cortar la linea del inicio al final.
- `ctrl-e`: ir al final de la linea.
- `ctrl-l`: limpiar la terminal.
- `ctrl-u`: borrar toda la linea.
- `ctrl-d`: cerrar shell actual.
- `ctrl-p`: mostrar ultimo comando, se puede repetir.
- `ctrl-r`: búsqueda reversa según una palabra.
- `!<word>`: traerá el ultimo comando que hace match, con la `word`.
	- `!ls` -> `ls -lah`
- `!!`: ejecutar el ultimo comando.
- `ctrl-b`: moverse hacia atrás.
- `ctrl-f`: moverse hacia adelante.
- `alt-.`: argumento del ultimo commando.
- `!$`: referencia al ultimo argumento.
- `<command> tab`: mostrar commandos.
- `ctrl-shift-c`: copiar.
- `ctrl-shift-v`: pegar.
- `alt-l/u`: convierte la palabra en mayúscula o minúscula.
- `ctrl-z`: mandar al segundo plano.

## Crear alias

- `alias`: ver todos los alias creados.

```bash
# crear alias, NO persiste al cerrar la shell
alias cls='clear ; ls'

# eliminar alis
unalias cls
```

## _is hashed_

- Aparece al consultar información de x comando.
- Quiere decir que la shell agrego a x comando a una _hash table_ para **acceder mas rápido**.
- Esto lo hace con los comandos mas usados, que no pertenecen a la _shell_ y es necesario ir a buscarlos a una ruta especifica, cosa que lo hace mas lento.

```bash
# ver la hash table completa
hash

# eliminar todas las entradas de hash table
# se pueden volver a agregar
hash -r
```