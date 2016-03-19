# dont kill background processes when killing zsh
setopt no_hup

# don't check if there are jobs running when exiting the shell
setopt no_check_jobs

# don't share history with other opened zsh instances
unsetopt share_history

# don't expand aliases _before_ completion has finished
setopt complete_aliases

# If a command is issued that can't be executed as a normal command
# and the command is the name of a directory, perform the cd command to that
# directory.
setopt auto_cd

# Perform implicit tees or cats when multiple redirections are attempted
# (see the section 'Redirection').
setopt multios

# Functions to make it easier to type URLs as command line arguments.
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# List jobs in the long format by default.
setopt long_list_jobs

# If set, parameter expansion, command substitution and arithmetic expansion are
# performed
setopt prompt_subst

# Load and run compinit
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
