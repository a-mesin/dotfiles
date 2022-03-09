#!/bin/bash

set -x

echo '📦 Installing nix package manager'
curl -L https://nixos.org/nix/install | sh

# TODO: source nix

echo '🚀 Install packages'
packages=(
    bat
    git
    neovim
    stow
    tmux
    ripgrep
    zsh
)

for package in ${packages[@]}
do
    echo '📦 Installing $package'
    nix-env -iA nixpkgs.$package
done

echo '🚀 Stow dirs'
stow_dirs=(
    zsh
    tmux
    nvim
)

for stow_dir in ${stow_dirs[@]}
do 
    stow $stow_dir
done

echo '🚀 Install zprezto'
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo 'Add zsh as a login shell'
command -v zsh | sudo tee -a /etc/shells

echo 'Use zsh as default shell'
sudo chsh -s $(which zsh) $USER

# Use kitty terminal on MacOS
[ `uname -s` = 'Darwin' ] && stow kitty


