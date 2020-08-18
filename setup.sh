#!/usr/bin/env sh

tput setaf 1; echo "Update and Upgrade"; tput sgr0
sudo apt update && sudo apt upgrade -y
