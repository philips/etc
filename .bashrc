export PATH=$PATH:$HOME/ghar/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME
export EDITOR=vim

case $TERM in
	xterm*)
		PS1="\[\033]0;\h: \w\007\]\\$ "
		;;
	*)
		export PS1="$ "
		;;
esac
