# fnm

# ToDo(David): determine FNM_PATH based on OS
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
    export PATH="$FNM_PATH:$PATH"

    if [ -n "${ZSH_VERSION:-}" ]; then
        eval "$(fnm env --use-on-cd --shell zsh)"
    elif [ -n "${BASH_VERSION:-}" ]; then
        eval "$(fnm env --use-on-cd --shell bash)"
    else
        eval "$(fnm env)"
    fi
fi
