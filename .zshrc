# Host specific changes
[ -e $HOME/.zshrc.host ] && source $HOME/.zshrc.host

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="philips"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

plugins=(git)

alias q="quilt"
alias iosc="osc -A https://api.suse.de"
alias fmail="msmtp-listqueue.sh; sleep 1 && msmtp-runqueue.sh"

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/home/philips/ghar/bin
