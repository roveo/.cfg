# enable completion
autoload -U compinit; compinit

# use emacs-style shortcuts, not vi
bindkey -e

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias v=nvim
alias g=git

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"


# activate plugins
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-fzf-history-search/zsh-fzf-history-search.zsh
# this one must be at the bottom
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(pyenv init -)"
eval "$(pyenv init --path)"
eval "$(zoxide init --cmd cd zsh)"

export PATH=$(go env GOPATH)/bin:$HOME/bin:$HOME/.local/bin:$PATH

JAVA_HOME=$(/usr/libexec/java_home)

