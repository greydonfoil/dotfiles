# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/gfoil/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
# 'dieter' is also good

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast pip python google wd command-not-found)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


alias ls='ls --color=auto'
alias ll='ls -al'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias notes='emacs -nw ~/Dropbox/notes.txt'
alias litanotes='emacs -nw ~/Dropbox/litanotes.org'
alias jplnotes='emacs -nw ~/Dropbox/org/jplnotes.org'
alias todo='emacs -nw ~/Dropbox/todo.org'
alias papernotes='emacs -nw ~/Dropbox/org/paper_readings.org'
alias pythonnotes='emacs -nw ~/Dropbox/org/python.org'
alias cppnotes='emacs -nw ~/Dropbox/org/cpp.org'
alias org='emacs -nw ~/Dropbox/org/school.org'
alias thesis='emacs -nw ~/Dropbox/research/thesis/text/notes.org'
alias xemacs='emacs'
#alias emacs='emacs -nw'
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
alias meshws="cd /home/gfoil/mesh/code/catkin_ws/src/meshnav-dev/src/ && cdpwd && screen"
alias mesh="ls"

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


# added by Anaconda 1.5.0 installer
#export PATH="/home/gfoil/bin/anaconda/bin:$PATH"

# source /opt/ros/kinetic/setup.zsh
source /opt/ros/kinetic/setup.zsh

# For mesh ODE
export ODE_DIR=/usr/local
if [ -f "${HOME}/mesh/code/catkin_ws/install/setup.zsh" ]; then
    source ${HOME}/mesh/code/catkin_ws/install/setup.zsh
fi

export TERM=xterm-256color
unsetopt share_history
