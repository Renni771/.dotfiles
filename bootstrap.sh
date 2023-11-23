# link files
CONFIG_DIR=$HOME/.config

ln -s $HOME/.dotfiles/nvim/ $CONFIG_DIR
ln -s $HOME/.dotfiles/zsh/ $CONFIG_DIR
ln -s $HOME/.dotfiles/alacritty/ $CONFIG_DIR
ln -s $HOME/.dotfiles/.tmux.conf $HOME

ln -s $CONFIG_DIR/zsh/.zshrc $HOME
ln -s $CONFIG_DIR/zsh/.zshenv $HOME
