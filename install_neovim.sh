#!/bin/bash

# Download the latest AppImage
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod +x nvim.appimage

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Optionally move it to a directory in your PATH
sudo mv nvim.appimage /usr/local/bin/nvim


curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "To confirm vim-plug installation run:"
echo "$ which vim-plug"
