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
    brew install z rg
    brew upgrade sqlite3
    brew cask install v2rayx iterm2 squirrel alfred vim
}

install_extra() {
    brew cask install shadowsocksx-ng tmux dropbox macpass google-chrome scrcpy visual-studio-code
}

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
