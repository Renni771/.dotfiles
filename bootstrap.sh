# link files
CONFIG_DIR=$HOME/.config

ln -s $HOME/.dotfiles/nvim/ $CONFIG_DIR
ln -s $HOME/.dotfiles/zsh/ $CONFIG_DIR
ln -s $HOME/.dotfiles/alacritty/ $CONFIG_DIR
ln -s $HOME/.dotfiles/.tmux.conf $HOME
ln -s $HOME/.dotfiles/.hushlogin $HOME

ln -s $CONFIG_DIR/zsh/.zshrc $HOME
ln -s $CONFIG_DIR/zsh/.zshenv $HOME
chmod +x ./zsh/plugins/fetch-plugins.sh && ./zsh/plugins/fetch-plugins.sh

ln -s $CONFIG_DIR/git/.gitconfig $HOME
ln -s $CONFIG_DIR/git/.gitignore $HOME

ensure_local_bin_exists
LOCAL_BIN_DIR="$HOME/.local/bin"
ln -s $HOME/.dotfiles/.local/bin/tmux-session-maker $LOCAL_BIN_DIR/tm
ln -s $HOME/.dotfiles/.local/bin/tmux-session-attacher $LOCAL_BIN_DIR/ta

ensure_local_bin_exists() {
  # Define the target directory
  local target_dir="$HOME/.local/bin"

  # Check if the directory exists
  if [ ! -d "$target_dir" ]; then
    # Directory does not exist, so create it
    echo "Creating directory: $target_dir"
    mkdir -p "$target_dir"
  else
    echo "Directory already exists: $target_dir"
  fi
}

