#!/bin/sh

alias sudo="doas"
alias sudoedit="doas vim"

alias vi="vim"
alias vim="nvim"

alias cl='clear'

alias l='exa --icons -a'
alias ls='exa --icons'
alias ll='exa --icons --long --group --all --header --git'
alias lla='exa --icons -la'
alias tree='exa --icons --tree --all'

alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
alias mkdir='mkdir -pv'

# yeet something into nonexistence
alias yeet="rm -rfi"
