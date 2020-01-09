# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Dotfile git tracking
# https://news.ycombinator.com/item?id=11070797
alias dotfile='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias etckeeper='sudo etckeeper'
alias ls='ls --color=auto'
alias ll='ls -l'

PS1='[\u@\h \W]\$ '

export PATH=~/.cargo/bin:$PATH
