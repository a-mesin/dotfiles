#!/bin/bash
set -x

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
)
# TODO: Add asdf and npm

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

echo '📦 Install neovim packages'
nvim --headless +PackerSync

echo '🚀 Install zprezto'
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo 'Add zsh as a login shell'
command -v zsh | sudo tee -a /etc/shells

echo 'Use zsh as default shell'
sudo chsh -s $(which zsh) $USER

# Use kitty terminal on MacOS
[ `uname -s` = 'Darwin' ] && stow kitty


