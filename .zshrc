# enable completion
autoload -U compinit; compinit

# use emacs-style shortcuts, not vi
bindkey -e

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias v=nvim
alias g=git

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"

source <(fzf --zsh)
# activate plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# this one must be at the bottom
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(pyenv init -)"
eval "$(pyenv init --path)"
eval "$(zoxide init --cmd cd zsh)"

export PATH=$(go env GOPATH)/bin:$HOME/bin:$HOME/.local/bin:$PATH

JAVA_HOME=$(/usr/libexec/java_home)

