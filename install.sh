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
	golang
	zulu
	gradle
	watch
	raycast
	rectangle
	wget
	procs
	fzf
	fish
	koekeishiya/formulae/yabai
	koekeishiya/formulae/skhd
	starship
	zsh-autosuggestions
)

for package in "${packages[@]}"; do
	echo "📦 Installing $package"
	brew install "$package"
done

echo '🚀 Stow dirs'
stow_dirs=(
	fish
	tmux
	nvim
	bat
	yabai
	skhd
)

for stow_dir in "${stow_dirs[@]}"; do
	stow "$stow_dir"
done

echo 'Install font'
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

echo 'Add fish as a login shell'
command -v fish | sudo tee -a /etc/shells

echo 'Use fish as default shell'
sudo chsh -s "$(which fish)" "$USER"

echo 'Install fisher 🐟'
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

echo 'Start yabai & skhd'
yabai --start-service
skhd --start-service
