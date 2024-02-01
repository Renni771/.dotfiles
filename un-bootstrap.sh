# Remove symbolic links
CONFIG_DIR=$HOME/.config

rm $CONFIG_DIR/nvim
rm $CONFIG_DIR/zsh
rm $CONFIG_DIR/alacritty
rm $HOME/.tmux.conf

rm $HOME/.zshrc
rm $HOME/.zshenv

rm $HOME/.gitconfig
rm $HOME/.gitignore

LOCAL_BIN_DIR="$HOME/.local/bin"
rm $LOCAL_BIN_DIR/tm
rm $LOCAL_BIN_DIR/ta
