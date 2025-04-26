# .bashrc
if [ -f /etc/bashrc ]; then . /etc/bashrc; fi
# if alias file exist
if [ -f "$HOME/.local/bin/env" ]; then . ~/.local/bin/env; fi
# if tmux is not already started
# if [ "$TMUX" = "" ]; then tmux; fi

##### User specific aliases and functions
export PS1="\[\033[1;32m\]\u@\[\033[1;34m\]\W\[\033[1;34m\] \$\[\033[0m\] "

. "$HOME/.cargo/env"

export GPG_TTY=$(tty)

complete -C /usr/bin/terraform terraform
source <(kubectl completion bash)

. "$HOME/.local/share/applications//../bin/env"
eval "$(uv generate-shell-completion bash)"

complete -C /usr/bin/tofu tofu
