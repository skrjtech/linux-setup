#!/bin/bash
curl -o anaconda3.sh -OL https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
sudo bash anaconda3.sh -bfu -p /opt/anaconda3
rm -f anaconda3.sh