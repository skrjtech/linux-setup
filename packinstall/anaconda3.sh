#!/bin/bash
curl -OL https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh --output anacodna3.sh
sudo bash anacodna3.sh -bfu -p /opt/anacodna3
rm -f anacodna3.sh
