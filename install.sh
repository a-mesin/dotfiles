#!/bin/bash
set -x

echo '📦 Installing brew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo '🚀 Install packages'
packages=(
    bat
    git
    neovim
    stow
    tmux
    ripgrep
    zsh
    golang
    zulu
    maven
    watch
    raycast
    rectangle
    wget
)

for package in ${packages[@]}
do
    echo '📦 Installing $package'
    brew install $package
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

echo 'Install font'
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

echo '🚀 Install zprezto'
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo 'Add zsh as a login shell'
command -v zsh | sudo tee -a /etc/shells

echo 'Use zsh as default shell'
sudo chsh -s $(which zsh) $USER

