MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
CURRENT_DIR := $(dir $(MAKEFILE_PATH))

all: sync

sync:
	@touch ~/.hushlogin
	@touch ~/.zshrc
	
	@mkdir -p ~/Developer/
	
	@echo "alias dev='cd ~/Developer'" >> ~/.zshrc
	
	@[ -f ~/.gitconfig ] || ln -s $(CURRENT_DIR)gitconfig ~/.gitconfig

	@brew bundle --file=$(CURRENT_DIR)Brewfile
	
	@bash $(CURRENT_DIR)macos/dock.sh
	@bash $(CURRENT_DIR)macos/macos.sh
	
clean:
	@rm -f ~/.gitconfig
	@rm -f ~/.zshrc
	
.PHONY: all clean sync
