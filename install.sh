#!/bin/bash

NVIM=/usr/bin/nvim
CONFIG="$HOME"/.config/nvim

if [ $EUID != 0 ]; then
    echo "Can't install neovim. Please try again as root"
    exit
fi

if  [ ! -f "$NVIM" ]; then
    echo "Getting Latest Version of Neovim..."
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x ./nvim.appimage
    mv ./nvim.appimage "$NVIM"
    echo "Latest Neovim installed"
fi

# echo "Getting 'Packer' plugin manager..."
# curl -LO https://raw.github.com/robertpeteuil/packer-installer/master/packer-install.sh
# chmod +x ./packer-install.sh
# ./packer-install.sh

# read -p "Backup files? (N/y)" -n 1 -r

# [[ -f "$CONFIG" ]] || [
#     echo "Making a backup folder for old configs at $CONVIG_backup"
#     mv "$CONFIG" ~/.config/nvim/.backup
#     cp . "$CONFIG"
#     echo "Done"
# ]

# echo "$CONFIG"
# if [ ! -d "$Config" ]; then
#     echo "Copying config files"
# else
#     echo "Directory already exists"
# fi
