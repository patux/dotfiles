# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

if [ -f /etc/os-release ]; then
  . /etc/os-release
  if [ "$ID" == "arch" ]; then
    # All the default Omarchy aliases and functions
    # (don't mess with these directly, just overwrite them here!)
    source ~/.local/share/omarchy/default/bash/rc
  fi
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export VAGRANT_DEFAULT_PROVIDER=libvirt
export LIBVIRT_DEFAULT_URI="qemu:///system"
export PATH="$HOME/.local/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

#Java PATH
export JAVA_HOME=/home/patux/jre1.8.0_471
export PATH=$JAVA_HOME/bin:$PATH

# oh-my-posh
POSH_THEME="stelbent-compact.minimal"
eval "$(oh-my-posh init bash --config $HOME/.cache/oh-my-posh/themes/$POSH_THEME.omp.json)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:
# eval "$(pyenv virtualenv-init -)"

# Added by hand by geronimo for rocm reference AMD laptop uses gfx90c
# gfx90a = high-performance data center GPU (CDNA 2) with full FP64 support.
# gfx90c = integrated graphics (Vega iGPU) in consumer APUs, with limited compute capabilities.
# For software like SeisSol or Ollama, compiling for gfx90c requires setting HSA_OVERRIDE_GFX_VERSION=9.0.12 (since gfx90c = 9.0.12 in hex), while gfx90a requires HSA_OVERRIDE_GFX_VERSION=9.0.10.

export ROCM_PATH=/opt/rocm
# export HSA_OVERRIDE_GFX_VERSION=10.3.0
export HSA_OVERRIDE_GFX_VERSION=9.0.12

# NPM local
export NPM_PACKAGES="$HOME/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
eval "$(zoxide init bash)" # Replace bash with zsh or fish as needed
eval "$(fzf --bash)"
