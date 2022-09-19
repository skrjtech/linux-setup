#!/bin/bash

sudo apt install -y curl
curl -o anaconda3.sh -OL https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
sudo bash anaconda3.sh -b -p /opt/anaconda3
# sudo ln -s /opt/anaconda3/bin/conda /usr/bin/conda
sudo ln -s /opt/anaconda3/etc/profile.d/conda.sh /etc/profile.d/conda.sh
echo ". /opt/anaconda3/etc/profile.d/conda.sh" >> ~/.bashrc
sudo find /opt/conda/ -follow -type f -name '*.a' -delete
sudo find /opt/conda/ -follow -type f -name '*.js.map' -delete
rm -f anacodna3.sh