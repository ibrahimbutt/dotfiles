MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
CURRENT_DIR := $(dir $(MAKEFILE_PATH))

all: sync

sync:
	@touch ~/.hushlogin
	@touch ~/.zshrc

	@mkdir -p ~/Developer/

	@echo "alias dev='cd ~/Developer'" >> ~/.zshrc
	
	@[ -f ~/.gitconfig ] || ln -s $(CURRENT_DIR)git/gitconfig ~/.gitconfig
	@[ -f ~/.gitignore ] || ln -s $(CURRENT_DIR)git/gitignore ~/.gitignore

	@brew bundle --file=$(CURRENT_DIR)Brewfile
	@rustup-init -y

	@bash $(CURRENT_DIR)macos/dock.sh
	@bash $(CURRENT_DIR)macos/macos.sh
	
clean:
	@rm -f ~/.gitconfig
	@rm -f ~/.zshrc
	
.PHONY: all clean sync
