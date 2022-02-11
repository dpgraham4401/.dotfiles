# .bashrc
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# if alias file exist
if [ -f "$HOME/.alias" ]; then
    source ~/.alias 
fi

##### User specific aliases and functions
export PS1="\[\033[1;32m\]\u@\[\033[1;34m\]\W\[\033[1;34m\] \$\[\033[0m\] "
