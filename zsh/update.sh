#!/usr/bin/env bash

fileName=".zshrc"

upload()
{
    echo "$fileName is symlink, no need to upload"
}


download()
{
    if [[ -f ~/$fileName ]]; then
        echo "$fileName exists, backup it"
        mv ~/$fileName ~/$fileName.bak
    fi
    rm ~/$fileName
    ln -s `pwd`/$fileName ~/$fileName
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
