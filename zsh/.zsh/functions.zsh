function newpkg() {
	git add $1 && git commit -m "newpkg: $1"
}

function bumppkg() {
    for pkg in $@; do
        commit_msg=$(grep "version: " "$pkg"/pkginfo | sed 's/version: //')
        git add $pkg
        git commit -m "$pkg: bump to ${commit_msg}"
    done
}


function dclean() {
	fakeroot debian/rules clean
}

function git_build() {
	if [[ -z "$1" ]] || [[ -z "$2" ]]; then
		echo "Usage: git_build DIST ARCH"
		exit
	fi

	EXTRA_OPTS=""

	if [[ ! -z "$3" ]]; then
		EXTRA_OPTS=--debbuildopts $3
	fi

	echo $EXTRA_OPTS

	echo "Building package for distribution [$1] on arch [$2]"

	DIST=$1 ARCH=$2 gbp buildpackage --git-debian-branch=$(git rev-parse --abbrev-ref HEAD) --git-arch=$2 --git-dist=$1  --git-builder="pdebuild --buildresult '..'  $EXTRA_OPTS"
}

function take() {
	mkdir -p $1
	cd $1
}

# next two functions taken from oh-my-zsh
function git_prompt_info() {
	testdir=`stat -f -L -c %T $(pwd)`
	if [[ "$testdir" == "ext2/ext3" ]]; then
		ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
		ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
		echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
	fi
}

function parse_git_dirty() {
	local STATUS=''
	FLAGS=('--porcelain' '--ignore-submodules=dirty')
	STATUS=$(command git status ${FLAGS} 2> /dev/null | tail -n1)
	if [[ -n $STATUS ]]; then
		echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
	fi
}

# colored man pages
function man() {
      env LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	  LESS_TERMCAP_md=$(printf "\e[1;31m") \
	  LESS_TERMCAP_me=$(printf "\e[0m") \
	  LESS_TERMCAP_se=$(printf "\e[0m") \
	  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	  LESS_TERMCAP_ue=$(printf "\e[0m") \
	  LESS_TERMCAP_us=$(printf "\e[1;32m") \
	  PAGER=/usr/bin/less \
	  _NROFF_U=1 \
	  PATH=${HOME}/bin:${PATH} \
	  			   man "$@"
}

function get_host_ip() {
	ip addr list docker0 | grep 'inet ' | cut -d' ' -f6 | cut -d'/' -f1
}
function container_ip() {
	docker inspect --format '{{ .NetworkSettings.IPAddress }}' $1
}

function docker_rm_all() {
	docker rm $(docker ps -a -q)
}
