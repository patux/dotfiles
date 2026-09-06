#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# Customize to your needs...
. /opt/homebrew/etc/profile.d/z.sh
export XDG_DATA_HOME="$HOME/.config/nvim"
export PATH="/usr/local/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Added by Antigravity
export PATH="/Users/patux/.antigravity/antigravity/bin:$PATH"

# opencode
export PATH=/Users/patux/.opencode/bin:$PATH

. "$HOME/.config/nvim/../bin/env"
export EDITOR=nvim
eval "$(zoxide init bash)" # Replace bash with zsh or fish as needed
