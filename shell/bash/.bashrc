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

function superupgrade {
	sudo sh -c 'pacman -Syu && paccache -r && paccache - ruk0'
}

# ----------------------------------------------------------------
# Languages
# ----------------------------------------------------------------

# c# - dotnet
export DOTNET_ROOT="/home/linuxbrew/.linuxbrew/Cellar/dotnet/8.0.1/libexec"

# c++ | need install 'clang'
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# go
if command -v go >/dev/null 2>&1; then
	export GOPATH="${HOME}/.go"
	if ! [[ "${PATH}" =~ :?${GOPATH}:? ]]; then
		export PATH="${GOPATH}/bin:${PATH}"
	fi
fi

# ruby
if command -v ruby >/dev/null 2>&1; then
	GEM_HOME=$(gem env user_gemhome)
	export GEM_HOME
	if ! [[ "${PATH}" =~ :?${GEM_HOME}/bin:? ]]; then
		PATH="${GEM_HOME}/bin:${PATH}"
		export PATH
	fi
fi

# rust
if command -v cargo >/dev/null 2>&1; then
	if ! [[ "${PATH}" =~ :?${HOME}/.cargo/bin:? ]]; then
		export PATH="${HOME}/.cargo/bin:${PATH}"
	fi
fi

if command -v luarocks >/dev/null 2>&1; then
	if ! [[ "${PATH}" =~ :?${HOME}/.luarocks/bin:? ]]; then
		export PATH="${HOME}/.luarocks/bin:${PATH}"
	fi
fi

# TODO - es posible eliminar hasta "Eval list"

# npm
if command -v npm >/dev/null 2>&1; then
	export NPM_CONFIG_PREFIX="${HOME}/.npm"
	if ! [[ "${PATH}" =~ :?${HOME}/.npm/bin:? ]]; then
		export PATH="${HOME}/.npm/bin:${PATH}"
	fi
fi

# R
if command -v R Rscript >/dev/null 2>&1; then
	R_LIBS_USER="$(Rscript --version)"
	R_LIBS_USER="${R_LIBS_USER%% ([0-9\-]*)}"
	R_LIBS_USER="${HOME}/.R/${R_LIBS_USER##Rscript (R) version }"
	if [ -n "${R_LIBS_USER}" ]; then
		export R_LIBS_USER
		if ! [ -d "${R_LIBS_USER}" ]; then
			mkdir -p "${R_LIBS_USER}"
		fi
		alias R='R --no-save '
		if [ -d /usr/share/mathjax ]; then
			export RMARKDOWN_MATHJAX_PATH=/usr/share/mathjax
		fi
	fi
fi

# beet autocompletion
if command -v beet >/dev/null 2>&1; then
	if ! [ -f "/usr/share/bash-completion/completions/beet" ] &&
		! [ -f "${HOME}/.local/share/bash-completion/completions/beet" ]; then
		eval "$(beet completion)"
	fi
fi

# custom scripts
if ! [[ "${PATH}" =~ :?${HOME}/.scripts:? ]]; then
	export PATH="${HOME}/.scripts:${PATH}"
fi

# local executables
if ! [[ "${PATH}" =~ :?${HOME}/.local/bin:? ]]; then
	export PATH="${HOME}/.local/bin:${PATH}"
fi

# local libraries
if ! [[ "${LD_LIBRARY_PATH}" =~ :?/usr/local/lib:? ]]; then
	LD_LIBRARY_PATH="/usr/local/lib:${LD_LIBRARY_PATH}"
fi
if ! [[ "${LD_LIBRARY_PATH}" =~ :?${HOME}/.local/lib:? ]]; then
	LD_LIBRARY_PATH="${HOME}/.local/lib:${LD_LIBRARY_PATH}"
fi
export LD_LIBRARY_PATH

# ----------------------------------------------------------------
# Eval list
# ----------------------------------------------------------------

# prompt
eval "$(starship init bash)"

# homebrew
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# fnm
eval "$(fnm env --use-on-cd)"

# zoxide
eval "$(zoxide init bash)"

# rofi scripts
# echo "PATH=$PATH:~/.config/rofi/scripts/" >>~/.profile

# fzf
eval "$(fzf --bash)"

# ----------------------------------------------------------------
# Alias
# ----------------------------------------------------------------
if [[ -f $DOTFILES/shell/aliases.sh ]]; then
	. $DOTFILES/shell/aliases.sh
fi
