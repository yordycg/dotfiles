# ----------------------------------------------------------------
# ~/.bashrc
# ----------------------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set to superior editing mode
set -o vi

# Keybinds
bind -x '"\C-l":clear'

# ----------------------------------------------------------------
# Environment Variables
# ----------------------------------------------------------------

export VISUAL=nvim
export EDITOR=nvim

# config
export BROWSER="firefox"

# directories
export REPOS="$HOME/repos"
export GITUSER="yordycg"
export GHREPOS="$REPOS/github.com/$GITUSER"
# export DOTFILES="$GHREPOS/dotfiles"
export DOTFILES="$REPOS/dotfiles"
# export SCRIPTS="$DOTFILES/scripts" # aun no tengo scripts
export SECOND_BRAIN="$REPOS/obsidian_notes"

# ----------------------------------------------------------------
# History
# ----------------------------------------------------------------

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ----------------------------------------------------------------
# Functions
# ----------------------------------------------------------------

# ----------------------------------------------------------------
# Languages
# ----------------------------------------------------------------

# c# - dotnet
export DOTNET_ROOT="/home/linuxbrew/.linuxbrew/Cellar/dotnet/8.0.1/libexec"

# c++ | need install 'clang'
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# ----------------------------------------------------------------
# Eval list
# ----------------------------------------------------------------

# prompt
eval "$(starship init bash)"

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# fnm
eval "$(fnm env --use-on-cd)"
# . "$HOME/.cargo/env"

# zoxide
eval "$(zoxide init bash)"

# rofi scripts
echo "PATH=$PATH:~/.config/rofi/scripts/" >>~/.profile

# fzf
eval "$(fzf --bash)"

# ----------------------------------------------------------------
# Alias
# ----------------------------------------------------------------
if [[ -f $DOTFILES/shell/aliases.sh ]]; then
	. $DOTFILES/shell/aliases.sh
fi
