#!/bin/bash

sudo apt update && sudo apt -y upgrade
sudo apt-get update && sudo apt-get -y upgrade
sudo apt install -y expect

if [ $(lsb_release -rs) = "18.04" ]; then
    sudo apt install -y fcitx-mozc
elif [ $(lsb_release -rs) = "20.04" ]; then
    sudo apt install -y fcitx-mozc
elif [ $(lsb_release -rs) = "22.04" ]; then
    sudo apt install -y fcitx5-mozc
else
    "OSリリースのバージョンが見つかりませんでした"
    exit 1
fi

. installer/vscode.sh
. installer/googlechrome.sh
. installer/docker.sh