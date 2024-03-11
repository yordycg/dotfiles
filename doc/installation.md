# Installation

## Homebrew

- Instalar: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

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

## fnm

- Instalar: `brew install fnm`
- Instalar ultima version: `fnm install --lts`
- Agregar a la configuracion de la shell: `eval "$(fnm env --use-on-cd)"`

## Alacritty

- Ver video en youtube!
- Crear _soft link_ en `/home/<user>/.config/alacritty`
- Clonar **Alacritty-Themes**.

## Starship

- Instalar la ultima version `starship.rs`
- Agregar la inicializacion en la **shell**: `eval "$(starship init bash)"`
- Necesitamos realizar un _symlink_ a la carpeta '/home/name-user/.config' 

## Fzf

- Instalar: `brew install fzf`

### Telescope-fzf

- Solucionar error de windows
- En directorio `nvim-data/telescope-fzf..` hacer:
  - `make clean`.
  - `make` - para crear el directorio **build**

## Zoxide

- Instalar: `brew install zoxide`
- Agregar a la **shell**: `eval "$(zoxide init bash)"`

## Exa

- Instalar: `sudo apt install exa`

## Bat

- Instalar: `brew install bat`

## Tmux

- Instalar: `brew install tmux`
- 

## Instalar fuentes en ubuntu

- Crear un directorio `.fonts` en el `home`.
```bash
mkdir .fonts && cd .fonts
```
- Reconstruir el cache de las fuentes: `fc-cache -f -v`

## Neovim

- Instalar neovim: `brew install neovim`
- Instalar complementos:
```bash
brew install fd
brew install ripgrep
brew install lazygit
brew install gcc
```
- Usar una **NerdFont**.
