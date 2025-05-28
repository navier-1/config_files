#!/bin/bash

echo "export PS1='\[\e[32m\]\u@\h:[\W]\[\e[0m\]$ '" >> ~/.bashrc

# Aliases
echo "alias nuke='rm -rf'" >> ~/.bashrc
echo "alias python='python3'" >> ~/.bashrc 
echo "alias l='ls'" >> ~/.bashrc
echo "alias ll='ls -lh'" >> ~/.bashrc

echo "Done. Source ~/.bashrc"

