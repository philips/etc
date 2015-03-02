export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/ghar/bin
export PATH=$PATH:$HOME/google-cloud-sdk/bin
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

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
