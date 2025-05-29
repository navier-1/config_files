#!/bin/bash

# share clipboard with system
sudo apt install xclip

mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula

cp vimrc ~/.vimrc

