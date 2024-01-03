PLUGINS_DIR=$CONFIG_DIR/zsh/plugins

# aliases
source $CONFIG_DIR/zsh/.alias.sh

# zsh config
source $CONFIG_DIR/zsh/zsh-config.sh

# syntax highlighting
source $PLUGINS_DIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

# auto suggestions
source $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# git prompt
source $PLUGINS_DIR/gitstatus/gitstatus.prompt.zsh 2>/dev/null

# powerlevel10k
# source $PLUGINS_DIR/powerlevel10k/powerlevel10k.zsh-theme 2>/dev/null

# Set prompt and enable colours
autoload -U colors && colors
PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
RPROMPT="${GITSTATUS_PROMPT}"  # right prompt: git status

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Hardware acceleration
export LIBVA_DRIVER_NAME="iHD"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

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
