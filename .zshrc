CONFIG_PATH=$HOME/development/config
SCRIPTS_PATH=$CONFIG_PATH/scripts
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"
export DEVELOPMENT_PATH=$HOME/development
export VIRTUALENV_PATH=$HOME/development/virtualenvs
# ZSH_THEME="refined"
# ZSH_THEME="spaceship"
# ZSH_THEME="dracula"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_medium dir vcs newline status)

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_medium)
# POWERLEVEL9K_CUSTOM_MEDIUM="echo -n '\uF859'"
# POWERLEVEL9K_CUSTOM_MEDIUM_FOREGROUND="black"
# POWERLEVEL9K_CUSTOM_MEDIUM_BACKGROUND="white"

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'
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
alias vim="/usr/local/Cellar/vim/8.0.1750/bin/vim"

alias start_ad_machine='cd /Users/gbenussi/property_simple/nginx-proxy && docker-compose up -d && cd ../ad-machine && docker-compose up'
alias load_crm_assistant='sh ~/development/tmux/tmux.sh && tmux a'
alias start_crm_assistant='cd /Users/gbenussi/property_simple/nginx-proxy && docker-compose up -d && cd ../crm-assistant && docker-compose up'
export PATH=${PATH}:/usr/local/mysql/bin
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autoload -U promptinit; promptinit
# prompt pure

eval "$(pyenv init -)"
alias dps='docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}\t{{.Mounts}}"'
alias dcps='docker-compose ps'

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline status)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_MODE='nerdfont-complete'

# source ~/powerlevel9k/powerlevel9k.zsh-theme
# ZSH_THEME="powerlevel9k/powerlevel9k"
