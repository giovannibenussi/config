autoload -Uz compinit
compinit

function tabc() {
  NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi
  # if you have trouble with this, change
  # "Default" to the name of your default theme
  echo -e "\033]50;SetProfile=$NAME\a"
}

function tab-reset() {
    NAME="Default"
    echo -e "\033]50;SetProfile=$NAME\a"
}

function colorssh() {
    if [[ -n "$ITERM_SESSION_ID" ]]; then
        trap "tab-reset" INT EXIT
        if [[ "$*" =~ "deploy.2brains.cl" ]]; then
            tabc SSH
	    elif [[ "$*" =~ "citiaps1.diinf.usach.cl" ]]; then
            tabc SSH
        else
            tabc Other
        fi
    fi
    ssh $*
}
compdef _ssh tabc=ssh

alias ssh="colorssh"
