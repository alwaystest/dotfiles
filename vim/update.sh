#!bin/bash

files=(.vimrc.local .vimrc.before.local .vimrc)

dotfiles_root=$(pwd -P)

upload()
{
    for fileName in ${files[@]} ; do
        cp ~/$fileName ./
    done
}

download()
{
    for fileName in ${files[@]} ; do
        ln -sf $dotfiles_root/$fileName $HOME/$fileName
        echo "link $fileName success"
    done
}

install()
{
    brew install jq
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +PlugInstall +qall
    pip3 install --user --upgrade pynvim
    pip3 install --user --upgrade autopep8
}

case "$1" in
    'upload')
        upload
        ;;
    'download')
        download
        install
        ;;
    *)
    echo "Didn't match anything"
esac
