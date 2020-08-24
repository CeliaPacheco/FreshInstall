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

#Probably not needed because Home dir is on separate drive so dot files stay there
#tput setaf 1; echo "Setting up NeoVim"; tput sgr0
#curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#
#curl https://raw.githubusercontent.com/CeliaPacheco/FreshInstall/master/init.vim > init.vim
#mv init.vim ~/.config/nvim



tput setaf 1; echo "Installing apt packages"; tput sgr0
apt install guake;
apt install variety;
apt install luckybackup


tput setaf 1; echo "Installing Rclone"; tput sgr0
curl https://rclone.org/install.sh | sudo bash
