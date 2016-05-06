# based on gentoo theme from oh-my-zsh
#
autoload -U add-zsh-hook
add-zsh-hook precmd prompt_precmd

function prompt_precmd() {
	ZSH_THEME_GIT_PROMPT_DIRTY="*"              # Text to display if the branch is dirty
	ZSH_THEME_GIT_PROMPT_CLEAN=""               # Text to display if the branch is clean
	ZSH_THEME_GIT_PROMPT_PREFIX="["
	ZSH_THEME_GIT_PROMPT_SUFFIX="] "
	#PROMPT='%(!.%F{red%}.%B%F{green})%n %B%F{blue}%(!.%~.%~)%F{magenta} $(git_prompt_info)%f%b'
	PROMPT='%(!.%F{red%}.%B%F{green})%n %B%F{blue}%(!.%~.%~)%F{magenta} %f%b'
}
