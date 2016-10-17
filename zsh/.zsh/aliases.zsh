# Show progress while file is copying
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

alias serviio-start="~/.serviio/bin/serviio.sh -start &"
alias serviio-stop="~/.serviio/bin/serviio.sh -stop"
alias serviio-console="~/.serviio/bin/serviio-console.sh"

alias ssh_oxez='/home/jason/stuff/ssh_oxez'
alias ssh_sti='/home/jason/stuff/ssh_sti'
alias __git-checkout_main=_git_checkout
alias debpath="export PYTHONPATH=`pwd`/debsources:"$PYTHONPATH""

# git
alias gco='git checkout'
alias gcm='git checkout master'
alias gup='git pull --rebase'
alias gp='git push'
alias gg='git bisect good'
alias gb='git bisect bad'
alias gbs='git bisect reset && git bisect start'

# ls colors
autoload -U colors && colors
alias ls="ls --color=auto -N"

alias dcmp="docker-compose"
alias kc='kill -9 $(ps ax | grep clion | ag jvm | cut -d " " -f 2)'

