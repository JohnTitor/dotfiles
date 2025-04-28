#!/bin/sh

echo "Chaos and..."

if [ ! "$(command -v rustup)" ]; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

mkdir -p ~/.config/git
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/ignore ~/.config/git/ignore

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
rm -rf ~/.zshrc
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

echo "Creation."
