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
    kitty
)

for stow_dir in ${stow_dirs[@]}
do 
    stow $stow_dir
done

echo 'Install font'
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

echo '📦 Install Nvim Packer'
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo '📦 Install neovim packages'
nvim --headless +PackerInstall

echo '🚀 Install zprezto'
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo 'Add zsh as a login shell'
command -v zsh | sudo tee -a /etc/shells

echo 'Use zsh as default shell'
sudo chsh -s $(which zsh) $USER

