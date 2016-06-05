# .bashrc

# User specific aliases and functions
 if [ "$ERM" != "dumb" ]; then
eval `dircolors -b`
alias ls='ls --color=auto'
alias ll='ls -al'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias notes='emacs -nw ~/Dropbox/notes.txt'
alias litanotes='emacs -nw ~/Dropbox/litanotes.org'
alias jplnotes='emacs -nw ~/Dropbox/org/jplnotes.org'
alias todo='emacs -nw ~/Dropbox/todo.org'
alias papernotes='emacs -nw ~/Dropbox/org/paper_readings.org'
alias org='emacs -nw ~/Dropbox/org/school.org'
alias xemacs='emacs'
alias emacs='emacs -nw'
alias CD='cd'
alias ccd='cd;cd'
alias fixdisplay='sh ~/bin/fixDisplay.sh'
alias phonehome='ssh -Y gfoil@gs11654.sp.cs.cmu.edu'
alias gopanda='ssh -Y gfoil@panda.frc.ri.cmu.edu'
alias matlab='/usr/local/matlab/bin/matlab -nodesktop -nosplash'
alias zoe='ssh -Y 1.0.0.3'
alias zoel='ssh -Y lita@1.0.0.3'
alias zoes='ssh -Y lita@1.0.0.4'
alias zoestate='ssh -Y lita@1.0.0.4'
alias zoepc='ssh -Y lita@zoe.pc.cs.cmu.edu'
alias gitlog='git log --graph --pretty=oneline --abbrev-commit'
alias dusort="du -ach | sort -h"
alias df="df -Tha --total"
alias mkdir="mkdir -pv"
alias wget="wget -c"
fi


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1="[\[\e[32m\]\u@\h:\[\e[36m\]\w \[\033[0m\]\t]\n> "

export PATH="$PATH:/usr0/home/gfoil/bin"
export LD_LIBRARY_PATH=/usr0/home/gfoil/bin:/usr/X11R6/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:$LIBRARY_PATH
export GREP_OPTIONS='--color=auto'
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export PYTHONPATH=/usr/local/lib/python2.7/dist-packages:$PYTHONPATH
#export GREP_COLOR='1;32'


function cdpwd {
    echo `/bin/pwd`
    cd `/bin/pwd`
}

function matrix {
	tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"
}

# added by Anaconda 1.5.0 installer
#export PATH="/home/gfoil/bin/anaconda/bin:$PATH"
