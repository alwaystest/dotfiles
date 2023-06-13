#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

install_brew() {
    # Check for Homebrew
    if test ! $(which brew)
    then
        echo "  Installing Homebrew for you."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
}

# Install homebrew packages
install_basic() {
    brew tap homebrew/cask-fonts
    brew install z rg tmux fzf tree
    brew install sqlite3
    brew install iterm2 squirrel alfred nvim
}

install_extra() {
    brew install macpass google-chrome scrcpy visual-studio-code spectacle font-fira-code-nerd-font
}

if [ "$(uname)" != "Darwin" ];then
    exit 0
fi

case "$1" in
    'basic')
        install_basic
        ;;
    'extra')
        install_extra
        ;;
    'init')
        install_brew
        ;;
    *)
    echo "Didn't match anything"
esac

exit 0
