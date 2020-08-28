plugins=(git)
source $ZSH/oh-my-zsh.sh

alias dotfile='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dfc='dotfile commit'
alias dfdc='dotfile diff --cached'
alias dfa='dotfile add'
alias dfd='dotfile diff'
alias dfl='dotfile log'
alias dfs='dotfile status'
alias ls='lsd'

umask 027

HISTFILE=~/.zsh_history
HISTSIZE=500
SAVEHIST=500
unsetopt beep
bindkey -v

setopt COMPLETE_ALIASES
zstyle :compinstall filename '/home/lberrymage/.zshrc'
zstyle ':completion:*' rehash true
autoload -Uz compinit
compinit

eval "$(starship init zsh)"
