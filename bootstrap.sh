#!/bin/sh

#Homebrew
./homebrew/install.sh init
./homebrew/install.sh basic

#copy configs
cp idea/.ideavimrc ~/
cp tmux/.tmux.conf ~/
#oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
./update download zsh
./update download vim
git config --global user.email 7553247+alwaystest@users.noreply.github.com
git config --global user.name eric
./homebrew/install.sh extra
