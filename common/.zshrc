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
plugins=(gitfast google wd command-not-found) #removed: python pip

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
alias todo='emacs -nw ~/Dropbox/todo.org'
alias papernotes='emacs -nw ~/Dropbox/org/paper_readings.org'
alias pythonnotes='emacs -nw ~/Dropbox/org/python.org'
alias cppnotes='emacs -nw ~/Dropbox/org/cpp.org'
alias org='emacs -nw ~/Dropbox/org/notes.org'
alias xemacs='emacs'
#alias emacs='emacs -nw'
alias CD='cd'
alias ccd='cd;cd'
alias gitlog='git log --graph --pretty=oneline --abbrev-commit'
alias dusort="du -ach | sort -h"
alias df="df -Tha --total"
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias meshws="cd /home/gfoil/mesh/code/catkin_ws/src/meshnav-dev/src/ && cdpwd && screen"
alias mesh="source ~/mesh/code/catkin_ws/install/setup.zsh"
alias tut="source ~/ECR/tut/install/setup.zsh"
alias druid="source ~/ECR/druid/ces18_demo/catkin_ws/install/setup.zsh"
alias ads="source ~/ECR/altering_driving_scenes/catkin_ws/devel/setup.zsh"
alias em="source ~/projects/Evidence_Mesh/install/setup.zsh"
alias grep="grep --color=auto"
alias swapcaps='setxkbmap -option ctrl:swapcaps'
alias fixtty="sudo kbd_mode -s"
alias gputop="watch -n 0.1 nvidia-smi"
alias sshmesh="ssh demo@edgecase.zapto.org -i ~/.ssh/id_rsa"
alias kinetic="source /opt/ros/kinetic/setup.zsh"

export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:$LIBRARY_PATH
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig

# virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
	source /usr/local/bin/virtualenvwrapper.sh
fi

# export PYTHONPATH=/usr/local/lib/python3.5/dist-packages:$PYTHONPATH
#export GREP_COLOR='1;32'

function cdpwd {
    echo `/bin/pwd`
    cd `/bin/pwd`
}

# for ECR/tut
export NVIDIA_COMPUTE=compute_61

# export PATH=/home/gfoil/anaconda3/bin:$PATH

if [ -f "/opt/ros/kinetic/setup.zsh" ]; then
	source /opt/ros/kinetic/setup.zsh
fi

# For mesh ODE
export ODE_DIR=/usr/local

# if [ -f "${HOME}/mesh/code/catkin_ws/install/setup.zsh" ]; then
#     source ${HOME}/mesh/code/catkin_ws/install/setup.zsh
# fi
# if [ -f "${HOME}/projects/Evidence_Mesh/install/setup.zsh" ]; then
#     source ${HOME}/projects/Evidence_Mesh/install/setup.zsh
# fi

export TERM=xterm-256color
unsetopt share_history

# For cuda:
export PATH=/usr/local/cuda-8.0/bin:${PATH:+:${PATH}}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/
export CUDA_HOME=/usr/local/cuda-8.0

# For Amazon AWS:
export PATH=~/.local/bin:$PATH
if [ -f "~/.local/bin/aws_zsh_completer.sh" ]; then
    source ~/.local/bin/aws_zsh_completer.sh
fi

if [ -f "~/projects/torch/install/bin/torch-activate" ]; then
    . ~/projects/torch/install/bin/torch-activate
fi
