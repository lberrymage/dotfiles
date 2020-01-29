# Aliases
alias dotfile='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dfc='dotfile commit'
alias dfdc='dotfile diff --cached'
alias dfa='dotfile add'
alias dfd='dotfile diff'
alias dfl='dotfile log'
alias dfs='dotfile status'
alias etckeeper='sudo etckeeper'
alias ls='lsd'

# Zsh theme
ZSH_THEME=powerlevel10k/powerlevel10k

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
