#!/bin/bash
curl -o anaconda3.sh -OL https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
sudo bash anacodna3.sh -bfu -p /opt/anaconda3
sudo ln -s /opt/anaconda3/bin/conda /usr/bin/conda
rm -f anacodna3.sh