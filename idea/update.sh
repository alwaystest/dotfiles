#!bin/sh

upload()
{
    cp ~/.ideavimrc ./
}

download()
{
    cp ./.ideavimrc ~/.ideavimrc
}

case "$1" in
    'upload')
        upload
        ;;
    'download')
        download
        ;;
    *)
    echo "Didn't match anything"
esac
