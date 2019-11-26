# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

CASE_SENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13

DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

setopt HIST_IGNORE_SPACE


# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git brew osx docker docker-compose kubectl python virtualenv aws)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/sbin:/usr/local/bin:$PATH:~/.my-mac-config/bin:~/.cargo/bin:~/go/bin:~/.krew/bin
export PATH="$PATH:/Users/oliver/.local/bin" # pipx


setopt PUSHDSILENT

export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

source ~/.my-shell-aliases
source ~/.my-shell-secrets

alias zshrc='. ~/.zshrc'


# Python stuff

function venv() {
    if [ ! -d .env ]; then
        virtualenv .env --python=`which python3`
    fi
    source .env/bin/activate
}


# Docker stuff

function docker-shell() {
    docker exec -i -t "$1" /bin/sh
}

function docker-cleanup() {
    docker ps -aq | xargs docker rm -vf
    docker network ls -qf type=custom | xargs docker network rm
}

# Mac-specific stuff

export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
alias readlink='greadlink'
alias makesafe='sudo xattr -d -r com.apple.quarantine'
