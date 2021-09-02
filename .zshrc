# .zshrc
###--Old file--###
autoload -U colors && colors
alias ssh="kitty +kitten ssh"
alias vim="/usr/bin/nvim"
alias vi="/usr/bin/nvim"
alias v="/usr/bin/nvim"
export EDITOR='/usr/bin/vim'
export XDG_CONFIG_HOME='/home/dg/.config/'
export PATH="${PATH}:${HOME}/.local/bin/"
fpath+=~/.zfunc
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd nomatch
unsetopt beep extendedglob notify
. "$HOME/.cargo/env"

###--Prompt-###
autoload -Uz compinit
compinit
autoload -Uz vcs_info 
precmd () { vcs_info } 
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' formats ' [%F{1}%b%f]%u/%c'
zstyle ':vcs_info:*:*:dg' formats "%0.0r"


PS1='%F{5}%n@%F{14}%1~%f$vcs_info_msg_0_ %(?.%F{#00ff00}√.%F{#ff0000}✗%F{#ffffff}%?)%F{5}>%F{#ffffff}'

###--Oh My Zsh--###
export ZSH="/home/dg/.oh-my-zsh"

# Themes
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Plugins
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git)

source $ZSH/oh-my-zsh.sh
