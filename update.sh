#!/bin/sh

upload()
{
    cd idea
    sh update.sh $1
    cd ..
}

download()
{
    cd idea
    sh update.sh $1
    cd ..
}

case "$1" in
    'upload')
        upload $1
        ;;
    'download')
        download $1
        ;;
    *)
    echo "Didn't match anything"
esac
