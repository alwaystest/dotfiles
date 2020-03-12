#!bin/sh

files=(.tmux.conf)

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
