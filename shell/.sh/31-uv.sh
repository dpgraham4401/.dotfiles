# UV
# https://docs.astral.sh/uv/
if command -v uv >/dev/null 2>&1; then
    if [ -n "${ZSH_VERSION:-}" ]; then
        eval "$(uv generate-shell-completion zsh)"
    elif [ -n "${BASH_VERSION:-}" ]; then
        eval "$(uv generate-shell-completion bash)"
    fi
fi
