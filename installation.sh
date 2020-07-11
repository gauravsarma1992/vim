#!/bin/bash
cp .vimrc ~/.vimrc
cp .git-completion.sh ~/
cp .git-aliases.sh ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'

echo "source ~/.git-completion.sh" >> ~/.bashrc
echo "source ~/.git-aliases.sh" >> ~/.bashrc

# For git status coloring
git config --global color.ui true
