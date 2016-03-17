#!/bin/zsh

bindkey '\e[1;5D' backward-word # urxvt, konsole
bindkey '^[Od' backward-word # urxvt

bindkey '\e[1;5C' forward-word # urxvt, konsole
bindkey '^[Oc' forward-word # urxvt

tcsh-backward-word () {
  local WORDCHARS="${WORDCHARS:s#/#}"
  zle emacs-backward-word
}
zle -N tcsh-backward-word
bindkey '\e[1;3D' tcsh-backward-word
bindkey '\e^[[D' tcsh-backward-word # tmux

tcsh-forward-word () {
  local WORDCHARS="${WORDCHARS:s#/#}"
  zle emacs-forward-word
}
zle -N tcsh-forward-word
bindkey '\e[1;3C' tcsh-forward-word
bindkey '^[^[[C' tcsh-forward-word # tmux
