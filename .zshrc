CONFIG_PATH=$HOME/development/config
SCRIPTS_PATH=$CONFIG_PATH/scripts
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"
export DEVELOPMENT_PATH=$HOME/development
export VIRTUALENV_PATH=$HOME/development/virtualenvs
# ZSH_THEME="pure"
ZSH_THEME="spaceship"
# ZSH_THEME="dracula"
SPACESHIP_GIT_SHOW=true
SPACESHIP_VENV_SHOW=true
# Theme: https://github.com/marianvlad/awesome-iterm
# plugins=(git)
plugins=(git bundler osx rake ruby)
source $CONFIG_PATH/alias.sh
source $CONFIG_PATH/env.sh
source $CONFIG_PATH/projects.sh
source $ZSH/oh-my-zsh.sh
source $CONFIG_PATH/ssh.sh

chmod +x $SCRIPTS_PATH/*
export PATH="$PATH:$SCRIPTS_PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=/opt/local/bin:/opt/local/sbin:$PATH # Macports
export LC_ALL=es_ES.UTF-8
export LANG=es_ES.UTF-8
export PATH="/usr/local/opt/elasticsearch@1.7/bin:$PATH"
alias vim="/usr/local/Cellar/vim/8.0.0893/bin/vim"

alias start_ad_machine='cd /Users/gbenussi/property_simple/nginx-proxy && docker-compose up -d && cd ../ad-machine && docker-compose up'
export PATH=${PATH}:/usr/local/mysql/bin
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U promptinit; promptinit
prompt pure
