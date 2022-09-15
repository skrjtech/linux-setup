#!/bin/bash
curl -OL https://download.jetbrains.com/python/pycharm-community-2022.2.1.tar.gz
sudo tar xzf pycharm-community-2022.2.1.tar.gz -C /opt/
rm pycharm-community-2022.2.1.tar.gz
sudo mv /opt/pycharm-community-2022.2.1 /opt/pycharm
sudo ln -s /opt/pycharm/bin/pycharm.sh /usr/bin/pycharm