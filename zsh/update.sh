#!bin/sh

fileName=".zshrc"

upload()
{
    cp ~/$fileName ./
}

download()
{
    cp ./$fileName ~/$fileName
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
