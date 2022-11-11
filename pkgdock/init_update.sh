#!/bin/bash
# apt
sudo apt update && sudo apt -y upgrade 
sudo apt -y full-upgrade autoremove autoclean
# apt-get
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade autoremove autoclean