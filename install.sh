echo '📦 Installing nix package manager'
curl -L https://nixos.org/nix/install | sh

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

