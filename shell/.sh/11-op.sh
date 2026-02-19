if command -v op >/dev/null 2>&1; then
    if [ -n "${ZSH_VERSION:-}" ]; then
        eval "$(op completion zsh)"
        compdef _op op
    elif [ -n "${BASH_VERSION:-}" ]; then
        eval "$(op completion bash)"
    fi
fi
