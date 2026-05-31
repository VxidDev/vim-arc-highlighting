# Arc Syntax Highlighting

Syntax highlighting for the **Arc programming language** supporting:

- Vim
- Neovim
- Emacs (major mode)

---

# Repository Structure

```

vim/
├── ftdetect/
├── ftplugin/
├── syntax/
└── makefile

emacs/
├── arc-mode.el
└── makefile

````

---

# Vim / Neovim Installation

This version uses Vim/Neovim native `pack/` directories.

## Install everything

```bash
make -C vim install
````

---

## Install Vim only

```bash
make -C vim install-vim
```

Installs to:

```
~/.vim/pack/plugins/start/arc-syntax
```

---

## Install Neovim only

```bash
make -C vim install-nvim
```

Installs to:

```
~/.local/share/nvim/site/pack/plugins/start/arc-syntax
```

---

## Optional Neovim plugin config

```bash
make -C vim install-plugins
```

Creates:

```
~/.config/nvim/lua/plugins/arc.lua
```

Example:

```lua
return {
  { dir = "/path/to/vim-arc-highlighting", lazy = false }
}
```

---

## Uninstall (Vim/Neovim)

```bash
make -C vim uninstall
```

Or separately:

```bash
make -C vim uninstall-vim
make -C vim uninstall-nvim
```

---

# Vim file roles

* `syntax/arc.vim` -> syntax highlighting rules
* `ftdetect/arc.vim` -> filetype detection for `.arc`
* `ftplugin/arc.vim` -> indentation + file settings

---

# Emacs Installation

Emacs support is a single major mode file.

## Install Emacs mode

```bash
make -C emacs install
```

This installs:

```
~/.emacs.d/lisp/arc-mode.el
```

---

## Required Emacs setup

Add this to your `~/.emacs.d/init.el`:

```elisp
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'arc-mode)
```

---

# Emacs file roles

* `arc-mode.el` -> major mode (syntax highlighting + indentation + settings)

---

# Features

## Vim / Neovim

* keyword highlighting
* function detection
* string + number highlighting
* operator highlighting
* filetype detection for `.arc`

## Emacs

* major mode (`arc-mode`)
* font-lock syntax highlighting
* 2-space indentation
* `.arc` file auto-detection

---

# Troubleshooting

## Vim / Neovim

If syntax does not load:

```vim
:syntax on
:set filetype?
```

Ensure file ends in `.arc`.

Restart editor after install.

---

## Emacs

If mode does not activate:

1. Verify installation:

```elisp
M-x describe-function RET arc-mode
```

2. Check file association:

```elisp
M-x describe-variable RET auto-mode-alist
```

3. Manually enable:

```elisp
M-x arc-mode
```

---

# Install everything

From repo root:

```bash
make -C vim install
make -C emacs install
```

---

# License

MIT License
