# kitty
if [ -n "${KITTY_PID:-}" ] || [ "${TERM:-}" = "xterm-kitty" ]; then
    alias ssh="kitty +kitten ssh"
fi
