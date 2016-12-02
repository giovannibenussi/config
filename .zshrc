CONFIG_PATH=$HOME/development/config
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"
ZSH_THEME="bullet-train"
# Theme: https://github.com/marianvlad/awesome-iterm
plugins=(git)
source $CONFIG_PATH/alias.sh
source $CONFIG_PATH/env.sh
source $ZSH/oh-my-zsh.sh
