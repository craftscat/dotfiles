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
export EDITOR="vim"

# ----------------------------
# zinit
# ----------------------------
zi wait lucid atload"zicompinit; zicdreplay" blockf for \
    @'zsh-users/zsh-autosuggestions' \
    @'zsh-users/zsh-completions' \
    @'zdharma-continuum/fast-syntax-highlighting'

# ----------------------------
# powerlevel10k
# ----------------------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# ----------------------------
# zsh-completions
# ----------------------------
# Enable completions.
autoload -Uz compinit && compinit
# Match lowercase letters to uppercase.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# Allow selection with Tab and arrows.
zstyle ':completion:*:default' menu select=1

# ----------------------------
# zsh-autosuggestions
# ----------------------------
# Set highlight style.
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"

# ----------------------------
# Go
# ----------------------------
export GO111MODULE=on
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

# ----------------------------
# Ruby
# ----------------------------
eval "$(rbenv init - zsh)"

# ----------------------------
# Rust
# ----------------------------
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

# ----------------------------
# Node.js
# ----------------------------
eval "$(nodenv init -)"

# ----------------------------
# z
# ----------------------------
. `brew --prefix`/etc/profile.d/z.sh

# ----------------------------
# ls
# ----------------------------
export LSCOLORS=gxfxcxdxbxegedabagacad

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
# Pathes
# ----------------------------
export PATH=$PATH:$HOME/bin
export PATH="$PATH:/opt/homebrew/bin/"
