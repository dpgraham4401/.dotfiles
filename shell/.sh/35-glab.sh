if command -v glab &>/dev/null
then
	source <(glab completion -s zsh); compdef _glab glab
fi
