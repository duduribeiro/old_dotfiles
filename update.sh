#!/bin/bash
echo "Updating dotfiles..."
git pull --rebase

echo "Updating vim plugins..."
git submodule update
