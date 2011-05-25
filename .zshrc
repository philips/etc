# Host specific changes
[ -e $HOME/.zshrc.host ] && source $HOME/.zshrc.host
[ -e $HOME/ghar/bin ] && export PATH=$PATH:$HOME/ghar/bin
[ -e $HOME/.cabal/bin ] && export PATH=$HOME/.cabal/bin:$PATH
[ -e $HOME/.gem/ruby/1.8/bin ] && export PATH=$HOME/.gem/ruby/1.8/bin:$PATH

export PATH=$PATH:~/bin/

# Maybe we are doing python here
[ -e /usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper.sh

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
