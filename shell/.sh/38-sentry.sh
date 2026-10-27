# https://docs.sentry.io/cli/installation/
if command -v sentry-cli >/dev/null 2>&1; then
	source <(sentry-cli completions zsh --quiet 2>/dev/null)
else
	# install the sentry.io CLI
	curl -sL https://sentry.io/get-cli/ | sh
fi
