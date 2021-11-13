# .bashrc
  
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

##### User specific aliases and functions
export PS1="\[\033[1;32m\]\u@\[\033[1;34m\]\W\[\033[1;34m\] \$\[\033[0m\] "
alias ssh="kitty +kitten ssh"
alias vim="/usr/bin/nvim"
alias v="/usr/bin/nvim"
alias venv="python -m venv"
alias rm="move_to_trash.sh"
alias od="onedrive --synchronize"
alias rustbook="firefox /home/dg/OneDrive/Documents/Books/theRustBookHtml/index.html"
export EDITOR='/usr/bin/nvim'
export VISUAL='/usr/bin/nvim'
export XDG_CONFIG_HOME='/home/dg/.config/'
export XDG_DATA_HOME='/home/dg/.local/share/applications/'
export PATH="${PATH}:${HOME}/.local/bin/"
export GOPATH="$HOME/go"
export RANGER_LOAD_DEFAULT_RC=FALSE
#export GDK_DPI_SCALE=1.6
. "$HOME/.cargo/env"
