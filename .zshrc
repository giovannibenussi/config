#zmodload zsh/zprof
export TERM="xterm-256color"
export DEVELOPMENT_PATH=$HOME/development
export VIRTUALENV_PATH=$HOME/development/virtualenvs
 #ZSH_THEME="refined"
#ZSH_THEME="spaceship"
ZSH_THEME=robbyrussell
#ZSH_THEME="dracula"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="simple"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline status)

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_medium)
# POWERLEVEL9K_CUSTOM_MEDIUM="echo -n '\uF859'"
# POWERLEVEL9K_CUSTOM_MEDIUM_FOREGROUND="black"
# POWERLEVEL9K_CUSTOM_MEDIUM_BACKGROUND="white"


#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_MODE='nerdfont-complete'
CONFIG_PATH=$HOME/development/config
SCRIPTS_PATH=$CONFIG_PATH/scripts
# Theme: https://github.com/marianvlad/awesome-iterm
 #plugins=(git)
export NVM_LAZY_LOAD=true
plugins=(macos git nvm yarn)
#ZSH_COMMAND_TIME_MIN_SECONDS=0
#ZSH_COMMAND_TIME_COLOR="cyan"
#ZSH_COMMAND_TIME_EXCLUDE=(vim)
source $CONFIG_PATH/alias.sh
source $CONFIG_PATH/env.sh
source $CONFIG_PATH/projects.sh
#source $ZSH/oh-my-zsh.sh
source $CONFIG_PATH/ssh.sh

chmod +x $SCRIPTS_PATH/*
export PATH="$PATH:$SCRIPTS_PATH"
#source ~/.rvm/scripts/rvm
export PATH=/opt/local/bin:/opt/local/sbin:$PATH # Macports
export LC_ALL=es_ES.UTF-8
export LANG=es_ES.UTF-8
export PATH="/usr/local/opt/elasticsearch@1.7/bin:$PATH"

alias start_ad_machine='cd /Users/gbenussi/property_simple/nginx-proxy && docker-compose up -d && cd ../ad-machine && docker-compose up'
alias load_crm_assistant='sh ~/development/tmux/tmux.sh && tmux a'
alias start_crm_assistant='cd ~/propertysimple/crm-assistant && docker-compose up'
export PATH=${PATH}:/usr/local/mysql/bin
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autoload -U promptinit; promptinit
# prompt pure

# eval "$(pyenv init -)"
alias dps='docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}\t{{.Mounts}}"'
alias dcps='docker-compose ps'
alias cls='colorls'
alias clsf='colorls -f'
alias clsd='colorls -d'

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline status)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_MODE='nerdfont-complete'

#export PATH=${PATH}:/Users/gbenussi/Library/Python/2.7/bin

#export GOROOT=/usr/local/Cellar/go/1.11.2/libexec
#export GOPATH=$HOME/go
#export PATH=$PATH:$GOPATH/bin

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export HTTPSTAT_SAVE_BODY=false

export SPACESHIP_GIT_SHOW=true
export SPACESHIP_VENV_SHOW=true
export SPACESHIP_EXEC_TIME_SHOW=true
export SPACESHIP_EXEC_TIME_ELAPSED=0
export SPACESHIP_PACKAGE_SHOW=false
export SPACESHIP_GCLOUD_SHOW=false
export SPACESHIP_AWS_SHOW=false
export SPACESHIP_NODE_SHOW=false
export SPACESHIP_DIR_TRUNC_REPO=false
export SPACESHIP_TIME_SHOW=true

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

export HOMEBREW_NO_AUTO_UPDATE=1
