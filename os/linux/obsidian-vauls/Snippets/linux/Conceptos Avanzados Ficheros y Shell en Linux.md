## Inodos

- Estructura de como se almacena la información de los archivos o directorios.
- Metadatos: nombre de toda la otra información como:
	- Dueño, fecha de creación, privilegios, etc.
- Los _inodos_ están asociados a cada archivo.
- `df -i`: muestra información de los inodos.
- **No están relacionados** con el espacio en el disco duro.
- `ls -i fichero.txt`: saber el numero de inodo de un archivo x.

## Dentries

- Estructura de directorio.
- Almacena el nombre del directorio, su [[#Inodos]], y su longitud.
- `ls -lid /home/yordycg`: ver información de x directorio.

## Enlaces simbólicos (_soft links_)

- Referencia a otro directorio o a otro archivos dentro de linux.
- `.bashrc -> /home/yordyx/.dotfiles/shell/bash/.bashrc` | ejemplo
> Similar a un acceso directo en windows.
- Tienen su propio [[#Inodos]].
	- Estos no tienen la información en bloque, solo tienen el link de referencia.
- Eliminar el archivo/directorio original romperá nuestro _soft link_.
```bash
# crear soft link 
# podemos usar rutas absolutas o rutas relativas!
# ln -s <ruta-archivo-directorio> <nombre-soft-link> | -s: indica soft link
ln Desktop/fichero.txt enlace_blando
```
> usar rutas absolutas al tener la necesidad de mover el archivo referenciado
## Enlaces duros (_hard links_)

- Fueron los primero enlaces en aparecer.
- **Se recomienda usar los [[#Enlaces simbólicos (_soft links_)]].
- **Solo es aplicable para los archivos, NO para los directorios**.
- Coinciden ambos [[#Inodos]]. Podemos eliminar el archivo original y no tendremos problemas.
```bash
# crear hard link
# ln <ruta-archivo> <nombre-hard-link>
ln Desktop/fichero.txt enlace_duro
```
> Prácticamente NO se usan.

## Wildcards

- Símbolos que podemos hacer referencia un grupo de archivos, usando **patrones**.
- Similar a [[Expresiones Regulares]].
- Probar antes los patrones con `ls`.
```bash
# simbolos
# * -> cualquier simbolo y cualquier caracter
cat fichero* # archivo que inicie con 'fichero' y cualquier terminacion
ls D*

# ? -> cualquier caracter, pero solo un caracter
cat fichero?.txt # mostrara informacion 'fichero1' y 'fichero2'

# [1234] -> indicamos una lista de posibles caracteres
cat fichero[1234].txt
cat fichero[!1234].txt # negacion, que no concidan con la lista indicada

# [[:class:]] -> indicar una clase
# [[:digit:]] -> digitos
# [![:digit:]] -> cualquiera menos los digitos
# [[:alpha:]] -> alfabeto
# [[:upper:]] -> mayuscula
ls -d [[:upper:]]*
```