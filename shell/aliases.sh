# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# alias ll="ls -l"
# alias la="ls -la"

# Exa | install exa
alias ll="exa -l --icons --git -a"
alias la="exa -la --icons --git"
alias lla="exa -la --group --icons --git"
alias lt="exa --tree --level=3 --long --icons --git" # install tree

alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias g="git"
alias gcl="git clone"
alias gaa="git add -A"
alias gc="git commit"
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd="git pretty-diff"
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gpp="git pull && git push"
alias gm="git merge"
alias gb="git branch"
alias gl="git pretty-log"
alias gg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"

# Utils
alias setup="mkdir \"$1\" && cd \"$1\""
alias ali="$EDITOR $DOTFILES/shell/aliases.sh"
alias zshrc="$EDITOR ~/.zshrc"
alias bashrc="$EDITOR ~/.bashrc"
alias al="$EDITOR ~/.config/alacritty/alacritty.toml"
alias so="source ~/.bashrc"
alias t="tmux"
alias c="clear"
alias x="exit"
alias bat="batcat" # instalar desde 'bat/github'

# Search
alias findd="ls ~/ | grep $1"
alias search="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | xargs nvim"

# Vim
alias vim="nvim"
alias vi="nvim"
alias v="nvim ."

# Directories
alias dot="cd $DOTFILES"
alias repos="cd $REPOS"

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
