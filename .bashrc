export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/ghar/bin
export PATH=$PATH:$HOME/google-cloud-sdk/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export EDITOR=vim

export PATH=$PATH:$HOME/bin

export BASH_SILENCE_DEPRECATION_WARNING=1

# When on Google Cloud Shell
if [ -f "/google/devshell/bashrc.google" ]; then
  source "/google/devshell/bashrc.google"
fi

if [ -f "$HOME/.bashrc.local" ]; then
  source "$HOME/.bashrc.local"
fi


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
if [ ! -f /etc/bashrc_Apple_Terminal ]; then
	export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
fi


# If not running interactively, return
case $- in
    *i*) ;;
      *) return;;
esac

alias pass-exportify-backup='for i in *.csv; do n=$(basename  $i .csv); pass insert -m spotify/$n < $i ; done'
alias journal='pass edit journal/$(date +%Y-%m-%d)'
alias shellstop='gcloud compute instances stop shell --project ifup-shell-2 --zone us-central1-a'
alias shellstart='gcloud compute instances start shell --project ifup-shell-2 --zone us-central1-a'
