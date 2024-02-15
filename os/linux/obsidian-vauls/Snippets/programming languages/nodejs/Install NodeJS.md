## NVM

- Permite instalar mas de una versión de nodeJS en el ordenador.

## FNM (recomendado!)

- Es un Node version manager, esta escriot en RUST con la simplicidad y velocidad en mente.
- [Documentation](https://github.com/Schniz/fnm)

### Instalar en un sistema de Linux y zsh

```bash
curl -fsSL https://fnm.vercel.app/install | zsh
```

### Comandos para usar con `fnm`

```bash
# listar todas las versiones de Node
fnm ls-remote

# listar todas las versiones INSTALADAS
fnm ls

# instalar la ultima version LTS
fnm install --lts 

# instalar una version especifica
fnm install v18.3.0

# Desintalar una version especifica
fnm uninstall <version>

# establecer un alias para una version
fnm alias <version> <name>

# `default` alias
fnm default <version>

# quitar un alias
fnm unalias <name>

# usar una version particular de Node
fnm use 16

# ver que version estamos usando
fnm current
```
