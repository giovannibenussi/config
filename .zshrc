zmodload zsh/zprof
export TERM="xterm-256color"
export DEVELOPMENT_PATH=$HOME/development
export VIRTUALENV_PATH=$HOME/development/virtualenvs
 #ZSH_THEME="refined"
#ZSH_THEME="spaceship"
#ZSH_THEME=robbyrussell
#ZSH_THEME="dracula"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="simple"

CONFIG_PATH=$HOME/dotfiles-local/config
SCRIPTS_PATH=$CONFIG_PATH/scripts
echo "Config: $CONFIG_PATH"
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

export HTTPSTAT_SAVE_BODY=false

export SPACESHIP_GIT_SHOW=true
export SPACESHIP_GIT_STATUS_SHOW=false
#export SPACESHIP_GIT_BRANCH_SHOW=false
export SPACESHIP_VENV_SHOW=true
export SPACESHIP_EXEC_TIME_SHOW=true
export SPACESHIP_EXEC_TIME_ELAPSED=0
export SPACESHIP_PACKAGE_SHOW=false
export SPACESHIP_GCLOUD_SHOW=false
export SPACESHIP_AWS_SHOW=false
export SPACESHIP_NODE_SHOW=false
export SPACESHIP_DIR_TRUNC_REPO=false
export SPACESHIP_TIME_SHOW=true

export HOMEBREW_NO_AUTO_UPDATE=1

#alias tat=tmux new -s `basename $PWD`
function tat() {
  tmux new -s `basename $PWD`
}

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# eval "$(github-copilot-cli alias -- "$0")"
