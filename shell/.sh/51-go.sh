# golang
export GOPATH="$HOME/go"
export PATH="${PATH}:${GOPATH}/bin"

if command -v go >/dev/null 2>&1; then
    export GOROOT="$(go env GOROOT)"
fi
