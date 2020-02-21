# Aliases
alias dotfile='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dfc='dotfile commit'
alias dfdc='dotfile diff --cached'
alias dfa='dotfile add'
alias dfd='dotfile diff'
alias dfl='dotfile log'
alias dfs='dotfile status'
alias etcfile='git --git-dir=$HOME/.etcfiles/ --work-tree=/etc'
alias efc='etcfile commit'
alias efdc='etcfile diff --cached'
alias efa='etcfile add'
alias efd='etcfile diff'
alias efl='etcfile log'
alias efs='etcfile status'
alias ls='lsd'
alias tree='ls --tree'

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=500
SAVEHIST=500
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/lberrymage/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
