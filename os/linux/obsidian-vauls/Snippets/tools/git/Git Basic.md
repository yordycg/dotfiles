Git es un sistema de control de versiones open source.

# Instalación

Ver la pagina de descarga de la web oficial [Git](https://git-scm.com/downloads)

# Configuración

```bash
git config --global user.name "yourName"
git config --global user.email "email@ofGitHub.com"
git config --global core.editor "code --wati"
git config --global init.defaultbranch "main"
```

# Usando Git

| Git Command                    | Comment                                                         |
| ------------------------------ | --------------------------------------------------------------- |
| git init                       | Inicializar un repositorio local                                |
| git clone <url_repositorio>    | Clonar un repositorio remoto en mi ordenador local              |
| git status                     | Mostrar los cambios `uncommited`, nuevos archivos, etc.         |
| git status -s                  | Mostrar los cambios de una forma simple y con iconos            |
| git diff                       | Mostrar el texto de los cambios antes del `stage`               |
| git diff --staged              | Mostrar el texto de los cambios desde el `stage`                |
| git add <name_file>            | Agregar al `stage area` / nuevo archivo para el prox. `comit`   |
| git add .                      | Agregar todos los archivos al `stage area`                      |
| git rm <name_file              | Eliminar del `stage area`                                       |
| git commit -m "message_commit" | Hacer `commit` de los nuevos archivos                           |
| git commit                     | Hacer `commit` pero abriendo un editor (vscode, nvim, etc)      |
| git log                        | Historial de los `commits`                                      |
| git log --oneline              | Historial `commits` con información simplificada                |
| git log --oneline --graph      | Mostrar de forma gráfica  el historial de `commits`             |
| git checkout <branch_name>     | Cambiar a otra rama (branch)                                    |
| git branch                     | Mostrar todas las ramas (branchs) creadas y la usada            |
| git branch -D <branch_name>    | Eliminar una rama                                               | 
| git branch <branch_name>       | Crear una nueva rama                                            |
| git merge <branch_name>        | Fusionar los cambios de <branch_name> a la rama en que estoy    |
| git push                       | Empujar los `commit` realizados a un repositorio remoto         |
| git pull                       | Traer el 'estado' del repositorio remoto, al mi ordenador local |


