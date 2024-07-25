#!/bin/bash

while true; do
	read -p "Are you on Mac? [y/N] " yn
	case $yn in 
		[Yy]* ) brew install gawk grep gnu-sed coreutils; break;;
		[Nn]* ) bash -c /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; break;;
		* ) echo "Please answer yes or no.";;
	esac
done

echo "Installing zsh-autosuggestion..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing zsh-you-should-use..."
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use

echo "Installing zsh-completions..."
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

echo "Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing fzf-tab-completion..."
mkdir ~/.fzf-tab-completion
git clone https://github.com/lincheney/fzf-tab-completion ~/.fzf-tab-completion

echo "Installing fzf..."
brew install fzf

echo "Installing mise..."
curl https://mise.run | sh

echo "Installing bat..."
apt install bat
