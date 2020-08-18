#!/usr/bin/env sh

tput setaf 1; echo "Update and Upgrade"; tput sgr0

sudo apt update && sudo apt upgrade -y

tput setaf 1; echo "Install flatpack packages"; tput sgr0

flatpak install -y --noninteractive flathub com.spotify.Client;
flatpak install -y --noninteractive flathub com.mattermost.Desktop; 
flatpak install -y --noninteractive flathub io.neovim.nvim;



tput setaf 1; echo "Setting up Cinnamon, Log out after"; tput sgr0
curl https://raw.githubusercontent.com/CeliaPacheco/FreshInstall/master/cinnamon_desktop > cinnamon_desktop
dconf load /org/cinnamon/ < cinnamon_desktop
rm cinnamon_desktop


tput setaf 1; echo "Downloading Nvim init file"; tput sgr0
curl https://raw.githubusercontent.com/CeliaPacheco/FreshInstall/master/init.vim > init.vim
mv init.vim ~/.config/nvim



tput setaf 1; echo "Installing apt packages"; tput sgr0
apt install guake;

