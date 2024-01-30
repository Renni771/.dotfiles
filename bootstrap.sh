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

