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
export BROWSER="brave"
export CHROME_EXECUTABLE"=/usr/bin/brave"

# Programming languages/Tools
# GO
export GOEXEC="/usr/local/go/bin"
export GOBIN="${XDG_DATA_HOME:-$HOME/.local/share}/go/bin"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"

# NVM
source $CONFIG_DIR/zsh/nvm.sh

# PATH config
export PATH="$GOBIN:$PATH"

