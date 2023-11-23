# Adds `~/.local/bin` to $PATH
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# XDG compatibility
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"

# Globals
export CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME}"

# ZSH settings
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Default programs
export EDITOR="nvim"
export GIT_EDITOR="/usr/bin/vim"
export TERMINAL="alacritty"
export BROWSER="brave-browser"
export CHROME_EXECUTABLE"=/usr/bin/brave-browser"

# Flatpak
export XDG_DATA_DIRS="${XDG_DATA_DIRS}:$HOME/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share"

# Golang
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

# Dart
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:/usr/lib/dart/bin"
. "$HOME/.cargo/env"
