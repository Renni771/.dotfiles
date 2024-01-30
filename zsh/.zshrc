PLUGINS_DIR=$CONFIG_DIR/zsh/plugins

# aliases
source $CONFIG_DIR/zsh/.alias.sh

# zsh config
source $CONFIG_DIR/zsh/zsh-config.sh


# Plugins
source $PLUGINS_DIR/fast-syntax-highlighting/F-Sy-H.plugin.zsh  # syntax highlighting
source $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh  # auto suggestions
source $PLUGINS_DIR/gitstatus/gitstatus.prompt.zsh # git prompt

# Set prompt and enable colours
autoload -U colors && colors
# PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%m %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PROMPT='%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%m %{$fg[magenta]%}%~ $GITSTATUS_PROMPT%{$fg[red]%}]%{$reset_color%}$%b '

# Hardware acceleration
export LIBVA_DRIVER_NAME="iHD"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# pnpm
export PNPM_HOME="/home/rendani/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Homebrew
export PATH=/usr/local/bin:$PATH

# bun completions
[ -s "/home/rendani/.bun/_bun" ] && source "/home/rendani/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go
export GOPRIVATE="github.com/thenativeweb"
