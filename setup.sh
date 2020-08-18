#!/usr/bin/env sh

tput setaf 1; echo "Update and Upgrade"; tput sgr0

sudo apt update && sudo apt upgrade -y

tput setaf 1; echo "Install flatpack packages"; tput sgr0

flatpack install flathub com.spotify.Client com.mattermost.Desktop io.neovim.nvim
flatpack run com.spotify.Client com.mattermost.Desktop io.neovim.nvim

apt install guake

