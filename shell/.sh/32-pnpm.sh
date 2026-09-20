# pnpm
# https://pnpm.io/

# ToDo(David): determine PNPM_HOME based on OS
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac
#compdef pnpm pn

###-begin-pnpm-completion-###

if command -v pnpm >/dev/null 2>&1; then
	_pnpm_completion() {
	  local reply
	  reply=("${(@f)$(COMP_CWORD=$((CURRENT-1)) COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" SHELL=zsh pnpm completion-server -- "${words[@]}")}")
	  _describe 'values' reply
	}
	compdef _pnpm_completion pnpm pn
fi
###-end-pnpm-completion-###
