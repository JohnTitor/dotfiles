# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fuyu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Startship setup
eval "$(starship init zsh)"

# Rust setup
. "$HOME/.cargo/env"

# zsh-autosuggestions setup
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias pulm="git pull upstream master"
alias pulma="git pull upstream main"
alias pusm="git push origin master"
alias pusma="git push origin main"
alias gcm="git commit -m"
alias gs="git switch"
alias gsc="git switch -c"
alias c='code'
alias k='kubectl'
alias kn='k9s'
