export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/ghar/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/go/bin
export EDITOR=nvim

alias vim=nvim

export PATH=$PATH:$HOME/bin

export BASH_SILENCE_DEPRECATION_WARNING=1

# When on Google Cloud Shell
if [ -f "/google/devshell/bashrc.google" ]; then
  source "/google/devshell/bashrc.google"
fi

if [ -f "$HOME/.bashrc.local" ]; then
  source "$HOME/.bashrc.local"
fi


if [ $USER = "philips" ]; then 
  export PS1="$ "
else
  export PS1="$USER $ "
fi

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
