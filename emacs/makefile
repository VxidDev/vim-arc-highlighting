EMACS_DIR   := $(HOME)/.emacs.d/lisp
INIT_FILE   := $(HOME)/.emacs.d/init.el

INSTALL_FILE := arc-mode.el
TARGET       := $(EMACS_DIR)/arc-mode.el

LOAD_SNIPPET := (add-to-list 'load-path \"$(EMACS_DIR)\")\n(require 'arc-mode)\n

.PHONY: install uninstall clean

install: install-emacs configure-emacs

install-emacs:
	@echo "Installing Arc Emacs mode..."
	mkdir -p $(EMACS_DIR)
	cp $(INSTALL_FILE) $(TARGET)
	@echo "Done copying."

configure-emacs:
	@echo "Configuring Emacs init.el..."

	@if ! grep -q "arc-mode" $(INIT_FILE) 2>/dev/null; then \
		echo "" >> $(INIT_FILE); \
		echo ";; Arc mode setup" >> $(INIT_FILE); \
		printf "$(LOAD_SNIPPET)" >> $(INIT_FILE); \
		echo "Added arc-mode to init.el"; \
	else \
		echo "arc-mode already configured in init.el"; \
	fi

uninstall:
	@echo "Removing Arc Emacs mode..."
	rm -f $(TARGET)

	@echo "Cleaning init.el entry..."
	@if [ -f $(INIT_FILE) ]; then \
		sed -i '/arc-mode/d' $(INIT_FILE); \
	fi

clean:
	@echo "Nothing to clean."
