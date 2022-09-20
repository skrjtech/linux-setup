#!/bin/bash

set -x

sudo apt -y update 
sudo apt -y upgrade 
sudo apt -y full-upgrade
sudo apt -y autoremove
sudo apt -y autoclean

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean

sudo apt install -y git
sudo apt install -y vim
sudo apt install -y gdb
sudo apt install -y make
sudo apt install -y nano
sudo apt install -y wget
sudo apt install -y curl
sudo apt install -y htop
sudo apt install -y tmux
sudo apt install -y bzip2
sudo apt install -y cmake
sudo apt install -y xterm
sudo apt install -y gnupg
sudo apt install -y gnupg2
sudo apt install -y libsm6
sudo apt install -y procps 
sudo apt install -y libxi6
sudo apt install -y locales
sudo apt install -y gettext
sudo apt install -y texinfo
sudo apt install -y valgrind
sudo apt install -y dbus-x11
sudo apt install -y libxext6
sudo apt install -y mercurial 
sudo apt install -y python3-tk
sudo apt install -y mesa-utils
sudo apt install -y subversion
sudo apt install -y terminator
sudo apt install -y libssl-dev
sudo apt install -y gnutls-bin
sudo apt install -y libbz2-dev
sudo apt install -y zlib1g-dev
sudo apt install -y libxfixes3 
sudo apt install -y libxrandr2 
sudo apt install -y subversion 
sudo apt install -y default-jre
sudo apt install -y default-jdk
sudo apt install -y lsb-release
sudo apt install -y libxcursor1
sudo apt install -y libxdamage1
sudo apt install -y libxrender1 
sudo apt install -y libldap2-dev
sudo apt install -y libglib2.0-0
sudo apt install -y libxinerama1 
sudo apt install -y openssh-client 
sudo apt install -y libxcomposite1
sudo apt install -y libsqlite3-dev
sudo apt install -y build-essential
sudo apt install -y libgl1-mesa-glx
sudo apt install -y libgl1-mesa-dri
sudo apt install -y libgnutls28-dev
sudo apt install -y ca-certificates
sudo apt install -y libncurses5-dev
sudo apt install -y software-properties-common

set +x