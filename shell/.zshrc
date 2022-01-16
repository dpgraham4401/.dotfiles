# .zshrc
###--Old file--###
autoload -U colors && colors
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export EDITOR='/usr/bin/nvim'
export VISUAL='/usr/bin/nvim'
export XDG_CONFIG_HOME='/home/dg/.config/'
export XDG_DATA_HOME='/home/dg/.local/share/applications/'
export RANGER_LOAD_DEFAULT_RC=FALSE
export GOPATH="/home/dg/Projects/go"
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="${PATH}:${GOPATH}/bin"
export PATH="${PATH}:${HOME}/.local/bin/:/usr/bin/vendor_perl/"
export PATH="${HOME}/Scripts:${PATH}"
export GOROOT=`go env GOROOT`
alias ssh="kitty +kitten ssh"
alias vim="/usr/bin/nvim"
alias venv="python -m venv"
alias rm="$(which trash)"
alias od="onedrive --synchronize"
alias untar="tar -zxvf"
alias ping="ping -c 5"
alias speed="speedtest-cli --simple"
alias c="clear"
alias py="python"
alias dotfile="cd /home/dg/.dotfiles"
alias dev="cd /home/dg/Projects"
alias godev="cd $GOPATH/src/github.com/dpgrahm4401"
alias zshrc="source ~/.zshrc"
alias rustbook="firefox /home/dg/OneDrive/Documents/Books/theRustBookHtml/index.html"
alias pacr="pacman -Rs"
alias pacs="pacman -Ss"
alias paci="pacman -Si"
fpath+=~/.zfunc
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd nomatch
unsetopt beep extendedglob notify
. "$HOME/.cargo/env"

bindkey '^H' backward-kill-word
bindkey -s '^F' 'nvim $(fzf)\n'

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
CASE_SENSITIVE="false"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Plugins
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    golang 
    git
    web-search
    copybuffer
    dirhistory
    history
    pip
)

source $ZSH/oh-my-zsh.sh
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

# autostart ssh agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
