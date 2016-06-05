# .bash_profile

export TERM=xterm-color

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

bind "set completion-ignore-case on"

# User specific environment and startup programs

PS1="[\[\e[32m\]\u@\h:\[\e[36m\]\w \[\033[0m\]\t]\n> "

PATH=$PATH:$HOME/bin:/home/gfoil/bin:/home/gfoil/p4/intranet/bin:/home/gfoil/p4/techops/coredev/bin
BASH_ENV=$HOME/.bashrc
USERNAME=""

export USERNAME BASH_ENV PATH

export P4_HOME=/home/gfoil/p4
export P4EDITOR=emacs
export ATHENA_HOME="$P4_HOME/prod"
export INTRANET_HOME="$P4_HOME/intranet"
export EDITOR=/usr/local/bin/emacs
 
