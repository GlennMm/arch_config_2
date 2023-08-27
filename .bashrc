#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source /usr/share/nvm/init-nvm.sh
export PATH="$PATH:$HOME/.local/share/pnpm"

# pnpm
export PNPM_HOME="/home/glenn/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# source
. "$HOME/.cargo/env"

eval "$(zoxide init bash)"

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/sdks/flutter/bin"
export CHROME_EXECUTABLE="$PATH:/usr/bin/brave"

export DESKTOP_SESSION="Openbox"

# aliases
alias cd=z
alias cat=bat
alias nivm=nvim
alias nvim=neovide
alias ls=exa

# init utils
#
source <(/usr/bin/starship init bash --print-full-init)
