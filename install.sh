#!/bin/bash

DOTFILES=$HOME/dotfiles

ln -sf $DOTFILES/vimrc $HOME/.vimrc
echo "Symlinked dotfiles successfully"
