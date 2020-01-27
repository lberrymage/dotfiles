# Aliases
alias dotfile='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias etckeeper='sudo etckeeper'
alias ls='ls --color=auto'
alias ll='ls -l'

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
