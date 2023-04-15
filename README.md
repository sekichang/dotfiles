# install

```sh
brew install git nvim fish tig tmux exa bat fzf gnu-sed gawk bash

cd ~/.config
ln -s ~/dotfiles/nvim
ln -s ~/dotfiles/tmux
ln -s ~/dotfiles/tig

# .tig_historyの作成場所にする
mkdir -p ~/.local/share/tig

cd ~/.config/fish
ln -s ~/dotfiles/fish/config.fish

```
