#export GOPATH=$HOME/dev/go
export PATH="$PATH:$HOME/stuff/scripts:/opt/wine-staging/bin:$HOME/.rbenv/bin"

export DEBEMAIL="jason@jpleau.ca"
export DEBFULLNAME="Jason Pleau"

if [ "$TERM" = "xterm"  ]; then TERM=xterm-256color; fi

export PAGER=less
export LESS=-R

if hash rbenv 2>/dev/null; then
	eval "$(rbenv init -)"
fi

export NVIM_TUI_ENABLE_TRUE_COLOR=1
