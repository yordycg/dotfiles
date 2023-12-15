## NPM
### Commands
```bash
# iniciar proyecto
npm init

# lista de todos los paquetes instalados
npm ls

# instalar paquete
npm i <pkg> | npm install <pkg>

# actualizar patquete
npm up <pkg>

# desintalar paquete
npm un <pkg> | npm uninstall <pkg>

# ejecutar script
npm run <script>

# Forzar una limpieza del `npm cache`
npm cache clean --force
```

## PNPM
- [Documentation](https://pnpm.io/)
### Install
```bash
## using scoop
scoop install nodejs-lts pnpm

## using npm
npm install -g pnpm
```

### Commands
```bash
# iniciar proyecto
pnpm init

# instalar paquete (agregar al package.json)
pnpm add <pkg>

# instalar paquete EXACTO
pnpm add <pkg> -E

# instlar pagquete de DESARROLLO
pnpm add <pkg> -D

# instalar todas las dependencias de package.json
pnpm install | pnpm i

# actualizar todas las dependencias
pnpm update | pnpm up

# desintalar un paquete
pnpm remove <pkg> | pnpm rm <pkg>

# ejecutar script
pnpm run <script>

# ejecutar una prueba
pnpm test

# ejecutar paquete sin instalar
pnpm dlx <pkg> | pnpm exec <pkg>
# example -> pnpm exec tailwindcss init -p
```

## YARN
