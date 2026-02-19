# .bashrc
if [ -f /etc/bashrc ]; then . /etc/bashrc; fi
# if alias file exist
if [ -f "$HOME/.local/bin/env" ]; then . ~/.local/bin/env; fi
# if tmux is not already started
# if [ "$TMUX" = "" ]; then tmux; fi

##### User specific aliases and functions
export PS1="\[\033[1;32m\]\u@\[\033[1;34m\]\W\[\033[1;34m\] \$\[\033[0m\] "

. "$HOME/.local/bin/env"

# Direnv
eval "$(direnv hook bash)"

# Modular configurations
if [ -d "$HOME/.sh" ]; then
    for config in "$HOME/.sh"/*.sh; do
        [ -r "$config" ] && . "$config"
    done
fi
