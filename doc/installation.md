# Installation

## Git

- Instalar git

```bash
sudo apt install git:
```

- Actualizar nombre y email:

```bash
git config --global user.name "<nombre>"
git config --global user.email "<tu_email@email.com>"
git config --global init.defaultbranch "main"
git config --global color.ui "auto"
```

## Crear llaves ssh

- En la terminal ejecutar: `ssh-keygen -t ed25519 -C "<tu_email@email.com>"`
- Copiar la llave y agregar al github.

## Starship

- Necesitamos realizar un _symlink_ a la carpeta '/home/name-user/.config' 
