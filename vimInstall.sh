#!/bin/bash

# Bash script that will install a plug-in manager (vimplug), install the
# .vimrc file, and source everything in one script. Useful for setting
# up Vim easily on any host machine. 

# Installing the plug-in manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Get my .vimrc
mv ~/vimrc/.vimrc ~

# PlugInstall .vimrc
echo -ne '\n' | vim -c "PlugInstall" ~/.vimrc -c "wqa"

echo "Auto Vim configuration complete."

rm -rf vimrc
