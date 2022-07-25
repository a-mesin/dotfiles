#!/bin/bash
set -x


# TODO: Change nix to homebrew

echo '📦 Installing nix package manager'
curl -L https://nixos.org/nix/install | sh

echo 'Source nix'
if [ `uname -s` = 'Darwin' ]; then
    if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
        . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
    fi
else
    . ~/.nix-profile/etc/profile.d/nix.sh
fi

echo '🚀 Install packages'
packages=(
    bat
    git
    neovim
    stow
    tmux
    ripgrep
    zsh
    go
    openjdk17
    maven
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

# Use kitty terminal on MacOS
[ `uname -s` = 'Darwin' ] && stow kitty


