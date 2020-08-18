#!/usr/bin/env sh

tput setaf 1; echo "Update and Upgrade"; tput sgr0

sudo rm /etc/apt/prefrences.d/nosnap.pref

sudo apt update && sudo apt upgrade -y

tput setaf 1; echo "Install snap and snap packages"; tput sgr0

sudo apt install snapd

sudo snap install mattermost-desktop spotify htop

sudo snap install --beta nvim --classic


apt install guake

