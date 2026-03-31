# install

```sh
brew install bat eza fd fish gh ghq lazygit mise neovim ripgrep
brew install starship tig tmux tree-sitter-cli yazi zoxide

cd ~/.config

ln -s ~/dotfiles/fish
ln -s ~/dotfiles/git
ln -s ~/dotfiles/lazygit
ln -s ~/dotfiles/mise
ln -s ~/dotfiles/nvim
ln -s ~/dotfiles/tig
ln -s ~/dotfiles/tmux
ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml

# .tig_historyの作成場所にする
mkdir -p ~/.local/share/tig

```
