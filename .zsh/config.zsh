# ----------------------------
# Language
# ----------------------------
if [ -z $$LC_ALL ]; then
  export LC_ALL=C
fi
if [ -z $LANG ]; then
  export LANG=ja_JP.UTF-8
fi

# ----------------------------
# Color
# ----------------------------
autoload -Uz colors
colors

# ----------------------------
# History
# ----------------------------
HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=100000

# share .zshhistory
setopt inc_append_history
setopt share_history

# Searches the history for commands that begin with the characters you entered
# and completes them with the up and down arrows key.
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# ----------------------------
# Editor
# ----------------------------
export EDITOR="nvim"

# ----------------------------
# Others
# ----------------------------
alias loadzshrc="source $HOME/.zshrc"
alias relogin='exec $SHELL -l'

