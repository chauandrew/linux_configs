#!/bin/bash

# Remove personal bashrc/inputrc configs
sed -i '/# PERSONAL BASHRC CONFIGS/,/# END PERSONAL CONFIGS/d' ~/.bashrc
sed -i '/# PERSONAL INPUTRC CONFIGS/,/# END PERSONAL CONFIGS/d' ~/.inputrc
sed -i '/# PERSONAL BASH_PROFILE CONFIGS/,/# END PERSONAL CONFIGS/d' ~/.bash_profile
sed -i '/\" PERSONAL VIMRC CONFIGS/,/\" END PERSONAL CONFIGS/d' ~/.vimrc

# Delete vimrc plugin files
rm -rf ~/.vim/bundle

# Reload uninstalled files
source ~/.bashrc
bind -f ~/.inputrc

# Remove sl, lolcat, karpspinner 
rm $HOME/.local/bin/sl
rm $HOME/.local/bin/lolcat
rm $HOME/.local/bin/karpspinner

echo "Successfully uninstalled personal configurations!"
echo "Restart shell to reconfigure your shell!"
