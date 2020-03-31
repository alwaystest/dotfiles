#!bin/sh

files=(.vimrc.local .vimrc.before.local .vimrc)

upload()
{
    for fileName in ${files[@]} ; do
        cp ~/$fileName ./
    done
}

download()
{
    for fileName in ${files[@]} ; do
        cp ./$fileName ~/
    done
}

install()
{
    vim +PlugInstall +qall
    pip3 install --user --upgrade pynvim
    pip3 install --user --upgrade autopep8
    npm install -g jq
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
