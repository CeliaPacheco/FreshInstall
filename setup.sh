#!/usr/bin/env sh

tput setaf 1; echo "Update and Upgrade"; tput sgr0

sudo apt update && sudo apt upgrade -y

tput setaf 1; echo "Install flatpack packages"; tput sgr0

flatpak install -y flathub com.spotify.Client 
flatpak install -y flathub com.mattermost.Desktop 
flatpak install -y flathub io.neovim.nvim

flatpak run com.spotify.Client 
flatpak run com.mattermost.Desktop 
flatpak run io.neovim.nvim

apt install guake


tput setaf 1; echo "Setting up Cinnamon, Log out after"; tput sgr0
curl https://raw.githubusercontent.com/CeliaPacheco/FreshInstall/master/cinnamon_desktop
dconf load /org/cinnamon/ < cinnamon_desktop
rm cinnamon_desktop
