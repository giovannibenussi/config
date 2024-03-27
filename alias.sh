alias l='ls'
alias v='vim'
alias vv='/Users/giovannibenussi/.local/bin/lvim'
alias gs='git status'
alias atom='sh /Applications/Atom.app/Contents/Resources/app/atom.sh'
#alias tat='tmux new -s `basename $PWD`'
alias reset-vercel-token='vercel env remove TURSO_API_TOKEN preview && (echo -n $(turso auth token) | vercel env add TURSO_API_TOKEN preview)'
alias noti3='noti && sleep 1 && noti && sleep 1 && noti'

# From: https://juliu.is/a-simple-tmux/
function tat {
  name=$(basename `pwd` | sed -e 's/\.//g')

  if tmux ls 2>&1 | grep "$name"; then
    tmux attach -t "$name"
  elif [ -f .envrc ]; then
    direnv exec / tmux new-session -s "$name"
  else
    tmux new-session -s "$name"
  fi
}
