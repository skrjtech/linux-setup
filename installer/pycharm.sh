#!/bin/bash
sudo apt update && sudo apt -y upgrade
# java
sudo apt install -y default-jre
sudo apt install -y default-jdk

PYCHARM_VERSION=2022.2.1
# pycahrm
sudo apt-get install -y curl
curl -OL https://download.jetbrains.com/python/pycharm-community-$PYCHARM_VERSION.tar.gz
sudo tar xzf pycharm-community-$PYCHARM_VERSION.tar.gz -C /opt/
rm pycharm-community-$PYCHARM_VERSION.tar.gz
sudo mv /opt/pycharm-community-$PYCHARM_VERSION /opt/pycharm
sudo ln -s /opt/pycharm/bin/pycharm.sh /usr/bin/pycharm