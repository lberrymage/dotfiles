# Oh-my-zsh
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases
alias dotfile='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dfc='dotfile commit'
alias dfdc='dotfile diff --cached'
alias dfa='dotfile add'
alias dfd='dotfile diff'
alias dfl='dotfile log'
alias dfs='dotfile status'
alias ls='lsd'

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
