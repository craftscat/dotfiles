# ----------------------------
# Git
# ----------------------------
alias g="git"

# ----------------------------
# Homebrew
# ----------------------------
alias bru="brew update; brew upgrade; brew cu -a -y; brew cleanup"

# ----------------------------
# Ruby on Rails
# ----------------------------
alias be="bundle exec"
alias lbe="RAILS_ENV=local bundle exec"
alias tbe="RAILS_ENV=test bundle exec"
alias bi="bundle install -j4 --path 'vendor/bundle'"
alias rspec="bundle exec rspec"
alias rubocop="RAILS_ENV=local bundle exec rubocop"

# ----------------------------
# Node.js
# ----------------------------
# yarn
alias y="yarn"
alias yi="yarn install"
alias ya="yarn add"

# npm
alias n="npm"
alias ni="npm install"

# ----------------------------
# Container
# ----------------------------
# docker
alias dp="docker ps"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dce="docker-compose exec"

# ----------------------------
# Editors
# ----------------------------
alias v="vim"
alias c="code ."

# ----------------------------
# Self-made commands
# ----------------------------
# brew 
alias bip="brew-install-package"
alias bup="brew-uninstall-package"
# ghq
alias gcd="ghq-cd"
alias vs="ghq-vscode"
# others
alias fcat="fzf-cat"
alias fe="fzf-edit"
alias fg="fzf-grep"
alias fkill="fzf-kill"
alias goo="goole"

# ----------------------------
# Others
# ----------------------------
alias loadzshrc="source $HOME/.zshrc"

# bat
if [[ $(command -v bat) ]]; then
    alias cat="bat"
fi

# exa
if [[ $(command -v exa) ]]; then
    alias e="exa --icons"
    alias ls=e
    alias ea="exa -a --icons"
    alias la=ea
    alias ee="exa -ahl --git --icons"
    alias ll=ee
    alias et="exa -T -L 3 -a -I 'node_modules|.git|.cache' --icons"
    alias lt=et
    alias eta="exa -T -a -I 'node_modules|.git|.cache' --color=always --icons | less -r"
    alias lta=eta
fi

# ripgrep
if [[ $(command -v rg) ]]; then
    alias grep="rg"
fi

# Google Chrome
alias gbm="bmfzf | xargs open"

# tty-clock
alias clock="tty-clock -s -b -c -C5"