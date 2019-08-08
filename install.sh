#!/bin/bash

# Append files to existing config files
touch ~/.bashrc
if ! grep -q "# PERSONAL BASHRC CONFIGS:" ~/.bashrc
then
    echo "# PERSONAL BASHRC CONFIGS:" >> ~/.bashrc
    cat bashrc >> ~/.bashrc
    echo "# END PERSONAL CONFIGS" >> ~/.bashrc
fi
touch ~/.inputrc
if ! grep -q "# PERSONAL INPUTRC CONFIGS:" ~/.inputrc
then
    echo "# PERSONAL INPUTRC CONFIGS:" >> ~/.inputrc
    cat inputrc >> ~/.inputrc
    echo "# END PERSONAL CONFIGS" >> ~/.inputrc
fi
touch ~/.vimrc
if ! grep -q "\" PERSONAL VIMRC CONFIGS:" ~/.vimrc
then
    echo "\" PERSONAL VIMRC CONFIGS:" >> ~/.vimrc
    cat vimrc >> ~/.vimrc
    echo "\" END PERSONAL CONFIGS" >> ~/.vimrc
fi
# Copy .vim structure
cp -r .vim ~/.vim

# Reload keybindings / mappings
source ~/.bashrc
bind -f ~/.inputrc

# If git is installed, install and initialize vim plugins
type git > /dev/null
if [[ $? != 1 ]]
then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim -c VundleUpdate -c quitall
    git config --global color.ui always
    git config --global color.branch always
    git config --global color.diff always
    git config --global color.interactive always
    git config --global color.status always
    git config --global color.grep always
    git config --global color.pager true
    git config --global color.decorate always
    git config --global color.showbranch always
    git config --global user.email "andrewchau333@gmail.com"
    git config --global user.name "Andrew Chau"
else 
    sed '/\" PERSONAL VIMRC CONFIGS/,/\" END PERSONAL CONFIGS/d' ~/.vimrc
    echo "\" PERSONAL VIMRC CONFIGS:" >> ~/.vimrc
    cat gitless-vimrc >> ~/.vimrc
    echo "\" END PERSONAL CONFIGS" >> ~/.vimrc
fi

echo "Finished Installing Linux Configurations!"
