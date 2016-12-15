CONFIG_PATH=$HOME/development/config
SCRIPTS_PATH=$CONFIG_PATH/scripts
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"
export DEVELOPMENT_PATH=$HOME/development
export BRAINS_PATH=$HOME/2brains
export VIRTUALENV_PATH=$BRAINS_PATH/.virtualenvs
ZSH_THEME="bullet-train"
# Theme: https://github.com/marianvlad/awesome-iterm
plugins=(git)
source $CONFIG_PATH/alias.sh
source $CONFIG_PATH/env.sh
source $CONFIG_PATH/projects.sh
source $ZSH/oh-my-zsh.sh
source $CONFIG_PATH/ssh.sh

chmod +x $SCRIPTS_PATH/*
export PATH="$PATH:$SCRIPTS_PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
