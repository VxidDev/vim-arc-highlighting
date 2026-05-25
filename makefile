INSTALL_DIR_VIM  := $(HOME)/.vim/pack/plugins/start/arc-syntax
INSTALL_DIR_NVIM := $(HOME)/.local/share/nvim/site/pack/plugins/start/arc-syntax
NVIM_PLUGINS_DIR := $(HOME)/.config/nvim/lua/plugins
PLUGIN_FILE      := $(NVIM_PLUGINS_DIR)/arc.lua

.PHONY: install-vim install-nvim install-plugins uninstall-vim uninstall-nvim clean

# Installs for both Vim and Neovim
install: install-vim install-nvim install-plugins

install-vim:
	@echo "Installing for Vim..."
	mkdir -p $(INSTALL_DIR_VIM)
	cp -r ftdetect ftplugin syntax $(INSTALL_DIR_VIM)
	@echo "Done."

install-nvim:
	@echo "Installing for Neovim (pack)..."
	mkdir -p $(INSTALL_DIR_NVIM)
	cp -r ftdetect ftplugin syntax $(INSTALL_DIR_NVIM)
	@echo "Done."

install-plugins:
	@echo "Installing into Neovim plugins configuration..."
	mkdir -p $(NVIM_PLUGINS_DIR)
	printf "return {\n  { dir = \"%s\", lazy = false }\n}\n" "$(CURDIR)" > $(PLUGIN_FILE)
	@echo "Done."

uninstall: uninstall-vim uninstall-nvim

uninstall-vim:
	@echo "Removing from Vim..."
	rm -rf $(INSTALL_DIR_VIM)
	@echo "Done."

uninstall-nvim:
	@echo "Removing from Neovim..."
	rm -rf $(INSTALL_DIR_NVIM)
	@echo "Done."

clean:
	@echo "Cleaning up local build artifacts..."
	@echo "Done."
