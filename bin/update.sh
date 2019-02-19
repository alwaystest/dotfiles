#!bin/sh

files=(proxy.sh unproxy.sh)

upload()
{
    for fileName in ${files[@]} ; do
        cp ~/bin/$fileName ./
    done
}

download()
{
    for fileName in ${files[@]} ; do
        cp ./$fileName ~/bin/
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
