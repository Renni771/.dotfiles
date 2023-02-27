# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

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
