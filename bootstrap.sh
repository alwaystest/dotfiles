#!/bin/sh

#Homebrew
./homebrew/install.sh

#copy configs
cp idea/.ideavimrc ~/
cp tmux/.tmux.conf ~/
#on my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp zsh/.zshrc ~/
#spf13
sh <(curl https://j.mp/spf13-vim3 -L)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vim/.vimrc.local ~/
cp vim/.vimrc.before.local ~/
