# pnpm
# https://pnpm.io/

# ToDo(David): determine PNPM_HOME based on OS
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac
