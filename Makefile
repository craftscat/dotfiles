DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
TARGETS    := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules .github
DOTFILES   := $(filter-out $(EXCLUSIONS), $(TARGETS))

.DEFAULT_GOAL := help

.PHONY: list
list: # Show dotfiles
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

.PHONY: deploy
ifeq ($(shell uname),Darwin)
deploy: # Create symbolic links to home directory
	@echo "==> Start to deploy dotfiles to home directory."
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@ln -sfnv $(DOTPATH)/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
	@echo "==> Grant execution rights to '~/bin/**'."
	@chmod +x ~/bin/**
	@echo "==> Done."
else
deploy:
	@echo "==> Start to deploy dotfiles to home directory."
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@echo "==> Grant execution rights to '~/bin/**'."
	@chmod +x ~/bin/**
	@echo "==> Done."
endif

ifeq ($(shell uname),Darwin)
.PHONY: init
setup: # Install Homebrew & setup（MacOS ONLY）
	@sh macos.sh
endif

.PHONY: help
help: # Self-documented Makefile
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
