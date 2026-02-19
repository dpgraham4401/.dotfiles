# general PATH setup
case ":${PATH}:" in
    *:"$HOME/.local/bin":*)
        ;;
    *)
        export PATH="$HOME/.local/bin:$PATH"
        ;;
esac

export PATH="${PATH}:${HOME}/.local/bin/"

### CDPATH ###
CDPATH="$HOME:$HOME/Projects:$HOME/Projects/sentry"
