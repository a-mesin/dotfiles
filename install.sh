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
# TODO: check if linking these is enough to install zprezto

ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.zlogin ~/.zlogin
ln -s ~/.dotfiles/zsh/.zlogout ~/.zlogout
ln -s ~/.dotfiles/zsh/.zprofile ~/.zprofile
ln -s ~/.dotfiles/zsh/.zshenv ~/.zshenv
ln -s ~/.dotfiles/zsh/.zpreztorc ~/.zpreztorc

echo 'Add zsh as a login shell'
command -v zsh | sudo tee -a /etc/shells

echo 'Use zsh as default shell'
sudo chsh -s $(which zsh) $USER

# Use kitty terminal on MacOS
[ `uname -s` = 'Darwin' ] && stow kitty


