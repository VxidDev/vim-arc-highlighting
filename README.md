# vim-arc-highlighting

Neovim/Vim syntax highlighting for the Arc programming language.

---

## Installation

This project supports:

* Vim (pack-based installation)
* Neovim (pack-based installation)
* Optional Neovim plugin loader (lazy.nvim-style plugin file)

### Install everything

```bash
make install
```

---

## Manual install targets

### Vim

Installs Arc syntax into Vim’s native package system:

```bash
make install-vim
```

Installs to:

```
~/.vim/pack/plugins/start/arc-syntax
```

---

### Neovim (recommended)

Installs Arc syntax using Neovim’s built-in package system:

```bash
make install-nvim
```

Installs to:

```
~/.local/share/nvim/site/pack/plugins/start/arc-syntax
```

---

### Optional: Neovim plugin config (lazy.nvim style)

This creates a plugin entry so Neovim can load the project as a local plugin:

```bash
make install-plugins
```

Creates:

```
~/.config/nvim/lua/plugins/arc.lua
```

Example generated file:

```lua
return {
  { dir = "/path/to/vim-arc-highlighting", lazy = false }
}
```

---

## Uninstall

Remove installed syntax files:

```bash
make uninstall
```

Or separately:

```bash
make uninstall-vim
make uninstall-nvim
```

---

## Clean

```bash
make clean
```

Currently does not remove installed packages (only placeholder for future build artifacts).

---

## File structure

```
ftdetect/
ftplugin/
syntax/
```

* `syntax/arc.vim` → syntax highlighting rules
* `ftdetect/arc.vim` → filetype detection
* `ftplugin/arc.vim` → optional filetype config hooks

---

## Notes

* Vim/Neovim automatically load plugins installed under `pack/*/start/`
* No additional configuration is required after `make install-vim` or `make install-nvim`
* For Neovim plugin system integration, use `make install-plugins`

---

## Troubleshooting

If syntax does not load:

1. Ensure file ends in `.arc`
2. Restart Vim/Neovim
3. Run:

```vim
:syntax on
```

4. Check filetype:

```vim
:set filetype?
```

## License 

MIT License
