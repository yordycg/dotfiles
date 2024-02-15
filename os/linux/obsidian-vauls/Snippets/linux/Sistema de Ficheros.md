# Sistema de ficheros

- Tenemos directorios y ficheros.
- Esta estructura de forma jerárquica, tenemos un directorio raíz (_root_) que es de donde cuelgan todos los demás directorios.
- `/`: hace referencia al directorio raíz.
	- `tree -L 1 /`: mostrar 1er nivel de directorio raíz, usando `tree` (instalar).

## Navegación

- **Ruta relativa**: desde el lugar que estamos podemos indicar a que directorio queremos ir.
	- `yordyx:~/$ cd Desktop/`
- **Ruta absoluta**: debemos hacer la referencia a un directorio desde la ruta raíz.
	- `/home/yordyx/Desktop/`

```bash
# mostrar ruta del directorio actual
pwd

# lista de directorios y archivos
ls

# moverse entre directorios
cd <ruta> 
cd # ir al directorio de trabajo
cd ~ # ir al directorio de trabajo
cd . # directorio acutal
cd .. # directorio anterior
cd - # directorio anterior
```

## Ficheros / Archivos

- En linux casi todo es un archivo.
- Tenemos archivos o directorios ocultos, debemos anteponer un `punto` antes.
	- Son archivos generalmente de configuración.

## Creación de ficheros

- Linux es _case sensitive_, diferencia entre mayúsculas y minúsculas.
- Evitar poner caracteres especial, ejemplo **espacio**
	- cambiar por un guion bajo.

```bash
# crear directorio
mkdir <name>

# crear fichero
touch hola.txt
```

## Visualización de ficheros y directorios

```bash
# ver que tipo de fichero es
file <name>

# mostrar contenido de un fichero (texto)
cat <name>
batcat <name> # necesario instalar
more <name> # mostrar contenido por arriba
less <name> # mejora de 'more'

# mostrar directorios
ls <ruta>
```

## Manipulación de ficheros y directorios

```bash
# copiar
# ! puede sobreescribir un fichero, tener cuidado!
cp <name> <name_copy> # original | copia
cp -i <name> <name_copy> # preguntara antes de sobreescribir

# copiar ficheros a directorios
cp <name1> <name2> <directory>

# copiar directorios
cp -r <directory> <directory_copy> # -r: recursive

# mover
mv <fichero> <directory/>
mv <directory/> <directory_1/>
mv <name> <new_name> # renombrar archivo o directorio
mv -u <fichero> <directory> # no muevelos archivos si existe una version actualizada

# eliminar
rm <fichero>
rm -r <directory>
rm -rf <name> # forzar eliminacion
```

## Búsqueda de fichero y directorios

```bash
# buscar por nombre
find <ruta> -name <name>

# buscar por directorio
find / -name log -type d

# buscar por creacion de x usuario
find /var/log -name '*' -user yordyx

# redirigir errores a un fichero para eliminarse
find /var/log -name <name> 2> /dev/null

# buscar y excluir una ruta
find / -name shadow ! -path "/snap/*" -ls 2> /dev/null
# buscar fichero: find / -name shadow
# exluir todo que inicie con x: ! -path "/snap/*"
# mostrar info avanzada: -ls
# eliminar errores: 2> /dev/null
```

## Directorios principales

- **bin**: almacena binarios, es un enlace simbólico.
- **boot**: archivos para arrancar el S.O.
- **cdrom**: montar archivos de un cd, ya no se usa.
- **dev**: diferentes interfaces para escribir y leer archivos.
- **etc**: contiene la configuración del S.O.
- **home**: carpeta personal de cada usuario.
- **init**: .
- **lib**: contiene las librerías para los diferentes programas.
	- lib32 | lib64 | libx32
- **lost+found**: carpeta que contiene _fsck_, para recuperar parte del sistema.
- **media**: montar dispositivos externos, ejemplo usb.
- **mnt**: punto de montaje de manera manual, windows en wsl.
- **opt**: instalar software de pago, o una parte de eso.
- **proc**: interface con el kernel.
- **root**: carpeta de trabajo del usuario privilegiado, root.
- **run**: mantiene información en tiempo de ejecución.
- **sbin**: binarios de tareas esenciales, manejados por el root.
- **snap**: gestor de paquetes.
- **srv**: datos de servicio.
- **sys**: interface con el kernel, cambiar algunos comportamientos.
- **tmp**: archivos temporales, se borran al apagar el equipo.
- **usr**: directorio mas grande, datos de todos los usuarios.
- **var**: datos que cambian con frecuencia.
- swapfile: intercambia información de la memoria ram, cuando se sobre carga.