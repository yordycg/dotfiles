# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
# alias ll="ls -l"
# alias la="ls -la"
# Install exa/github
alias ll="exa -l --icons"
alias la="exa -la --icons"
alias lla="exa -la --group --icons"
alias lt="exa --tree --icons" # install tree
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'

alias setup="mkdir \"$1\" && cd \"$1\""
alias zshc="nvim ~/.zshrc"
alias atyc="nvim ~/.config/alacritty/alacritty.toml"
alias so="source ~/.zshrc"
alias cl="clear"
alias x="exit"
alias bat="batcat" # instalar desde 'bat/github'

# Search
alias findd="ls ~/ | grep $1"
alias search="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | xargs nvim"

# Vim
alias vim="nvim"
alias vi="nvim"
alias v="nvim ."

# WSL
alias win="cd /mnt/c/Users/yordyPC" # change a yordyWIN
alias devc="cd /mnt/c/Users/yordyPC/Escritorio2/Cursos-Yordy/00 - Cursos Programacion/"

# Dev
# NodeJS
alias npmd="npm run dev"
alias npms="npm start"
alias rmnpmi="rm -rf node_modules && npm cache clean --force && npm i"
alias pn="pnpm"
alias pnd="pn run dev"
