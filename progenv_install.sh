#!/bin/bash

# progenv_install.sh - Simple install script to setup a programming
#                      environment in nvim and tmux.

############
# Packages #
############

# Install neovim
sudo apt -y install neovim
printf "[+] Done\n\n"

# Install tmux
echo [+] Beginning to install tmux
sudo apt -y install tmux
printf "[+] Done\n\n"

# Install packages for ycm
echo [+] Installing packages needed by ycm ...
sudo apt -y install build-essential cmake vim python3-dev
printf "[+] Done\n\n"

echo [+] Beginning to install vim-plug ...
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
printf "[+] Done\n\n"

echo [+] Beginning to install tpm ...
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
printf "[+] Done\n\n"

#################
# Configuration #
#################

# Copy nvim config files
echo [+] Copying nvim config files to ~/.config/nvim ...
if [ ! -d ~/.config/nvim ]; then
    mkdir ~/.config/nvim
fi

cp ~/dotfiles/.config/nvim/nvim_configs/* ~/.config/nvim
printf "[+] Done\n\n"

# Call PlugInstall
echo [+] Installing nvim plugins ...
nvim --headless +PlugInstall +qa
printf "[+] Done\n\n"

# Compile ycm with clangd support
echo [+] Compiling ycm ...
python3 ~/.vim/bundle/youcompleteme/install.py --clangd-completer
printf "[+] Done\n\n"

# Copy tmux configs
cp ~/dotfiles/.config/tmux/tmux.conf ~/.tmux.conf

# Copy bash_aliases file
cp ~/dotfiles/.config/bash_aliases ~/.bash_aliases
