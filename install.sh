#!/bin/bash

# bkp old files
echo "Backuping old files"
mv ~/.vim ~/.vim.old 2> /dev/null
mv ~/.vimrc ~/.vimrc.old 2> /dev/null

echo "Fetching vim plugins..."
git submodule init
git submodule update

echo "Installing dotfiles..."
cp vimrc ~/.vimrc
cp -R vim ~/.vim

echo "Instalation finished. enjoy :)"

