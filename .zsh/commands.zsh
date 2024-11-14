# ----------------------------
# self-made commands
# ----------------------------
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/usr/local/sbin

# ----------------------------
# cat / bat
# ----------------------------
if type "bat" > /dev/null 2>&1; then
    alias cat="bat"
fi

# ----------------------------
# cd
# ----------------------------
# auto cd
setopt AUTO_CD
cdpath=(.. ~ ~/src)

# auto ls
chpwd() {
	if [[ $(pwd) != $HOME ]]; then;
		ls
	fi
}

# ----------------------------
# docker
# ----------------------------
alias dp="docker ps"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dce="docker compose exec"

# ----------------------------
# editors
# ----------------------------
alias v="nvim"

# ----------------------------
# flutter
# ----------------------------
if type "flutter" > /dev/null 2>&1; then
    export PATH="$PATH:$HOME/development/flutter/bin"
fi

# ----------------------------
# fzf
# ----------------------------
source <(fzf --zsh)

# ----------------------------
# git
# ----------------------------
alias g="git"

# ----------------------------
# go
# ----------------------------
if type "go" > /dev/null 2>&1; then
    export GO111MODULE=on
    export PATH="$(go env GOROOT)/bin:$PATH"
    export PATH="$(go env GOPATH)/bin:$PATH"
fi

# ----------------------------
# google-cloud-sdk
# ----------------------------
source "/opt/homebrew/share/google-cloud-sdk/path.zsh.inc"

# ----------------------------
# gpg
# ----------------------------
export GPG_TTY=$TTY

# ----------------------------
# grep / ripgrep
# ----------------------------
if type "lg" > /dev/null 2>&1; then
    alias grep="rg"
fi

# ----------------------------
# homebrew
# ----------------------------
eval $(/opt/homebrew/bin/brew shellenv)

# ----------------------------
# kubectl
# ----------------------------
alias k="kubectl"

# ----------------------------
# ls / exa
# ----------------------------
if type "eza" > /dev/null 2>&1; then
    alias ls="eza --icons"
fi
export LSCOLORS=gxfxcxdxbxegedabagacad

# ----------------------------
# node
# ----------------------------
if type "nodenv" > /dev/null 2>&1; then
  eval "$(nodenv init -)"
fi

# ----------------------------
# ruby
# ----------------------------
if type "rbenv" > /dev/null 2>&1; then
    eval "$(rbenv init - zsh)"
fi
alias be="bundle exec"
alias dbe="RAILS_ENV=development bundle exec"
alias tbe="RAILS_ENV=test bundle exec"
alias bi="bundle install -j4 --path 'vendor/bundle'"
alias rspec="bundle exec rspec"
alias rubocop="RAILS_ENV=local bundle exec rubocop"

# ----------------------------
# rust
# ----------------------------
export PATH="$PATH:$HOME/.cargo/bin"

# ----------------------------
# z
# ----------------------------
. `brew --prefix`/etc/profile.d/z.sh
