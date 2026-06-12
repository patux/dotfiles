# README 

This repo is to manage my dotfiles with `stow`


- .bashrc
- .gitconfig
- .config/nvim


## Instructions

### Delete/Uninstall

```
stow -D bash
stow -D gitconfig
stow -D nvim
```

### Install

```
stow bash
stow gitconfig
stow nvim
```

## Omarchy

This must be run on omarchy after running `stow nvim`  in omarchy

```
ln -s ~/.config/omarchy/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
```
