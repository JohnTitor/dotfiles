#!/bin/sh

echo "Chaos and..."

if [ ! "$(command -v omz)" ]; then
  curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# https://asdf-vm.com/guide/getting-started.html
if [ ! "$(command -v asdf)" ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
  . ~/.asdf/asdf.sh
fi

if [ ! "$(command -v rustup)" ]; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

mkdir -p ~/.config/git
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/ignore ~/.config/git/ignore

rm -rf ~/.zshrc
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

ln -sf ~/dotfiles/asdf/.tool-versions ~/.tool-versions

echo "Creation."
