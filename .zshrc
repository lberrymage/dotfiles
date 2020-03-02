# Oh-my-zsh
source $ZSH/oh-my-zsh.sh

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

# Default umask
umask 027

# Miscellaneous options
HISTFILE=~/.zsh_history
HISTSIZE=500
SAVEHIST=500
unsetopt beep
bindkey -v

# Autocompletion
setopt COMPLETE_ALIASES
zstyle :compinstall filename '/home/lberrymage/.zshrc'
autoload -Uz compinit
compinit

# Starship prompt
eval "$(starship init zsh)"
