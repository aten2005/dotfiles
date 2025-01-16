#!/bin/bash

if [ "$EUID" -ne 0 ]
 then echo "Please run as root!"
 exit
fi

sudo dnf -y install \
	git \
	curl \
	zsh \
	&& dnf clean all

#Set zsh as the default shell
sudo chsh $USER

#Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cd ~/dotfiles/

rm -rf ~/.zshrc
cp ./.zshrc ~/.zshrc

rm -rf ~/.p10k.zsh
cp ./.p10k.zsh ~/.p10k.zsh

rm -rf ~/.oh-my-zsh
cp -r ./.oh-my-zsh ~/.oh-my-zsh/

rm -rf ~/.wezterm.lua
cp ./.wezterm.lua ~/.wezterm.lua

echo "Installed successfully!!"
exit
