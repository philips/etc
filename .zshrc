# Host specific changes
[ -e $HOME/.zshrc.host ] && source $HOME/.zshrc.host
[ -e $HOME/ghar/bin ] && export PATH=$PATH:$HOME/ghar/bin
[ -e $HOME/.cabal/bin ] && export PATH=$HOME/.cabal/bin:$PATH
[ -e $HOME/Applications/Postgres93.app/Contents/MacOS/bin ] && export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"


export PATH=/usr/local/bin:$PATH:~/bin/
export EDITOR=vim

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="philips"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

plugins=(git)

alias knife="nocorrect knife"
alias vssh="vagrant ssh"
alias vsuspend="vagrant suspend"
alias vup="vagrant up"

alias q="quilt"
alias iosc="osc -A https://api.suse.de"
alias fmail="msmtp-listqueue.sh; sleep 1 && msmtp-runqueue.sh"

source $ZSH/oh-my-zsh.sh
unsetopt correct


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
unsetopt correct
unsetopt correctall
