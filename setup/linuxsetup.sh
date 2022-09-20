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

sudo apt-get install -y --no-install-recommends git
sudo apt-get install -y --no-install-recommends vim
sudo apt-get install -y --no-install-recommends gdb
sudo apt-get install -y --no-install-recommends make
sudo apt-get install -y --no-install-recommends nano
sudo apt-get install -y --no-install-recommends wget
sudo apt-get install -y --no-install-recommends curl
sudo apt-get install -y --no-install-recommends htop
sudo apt-get install -y --no-install-recommends tmux
sudo apt-get install -y --no-install-recommends bzip2
sudo apt-get install -y --no-install-recommends cmake
sudo apt-get install -y --no-install-recommends xterm
sudo apt-get install -y --no-install-recommends gnupg
sudo apt-get install -y --no-install-recommends gnupg2
sudo apt-get install -y --no-install-recommends libsm6
sudo apt-get install -y --no-install-recommends procps 
sudo apt-get install -y --no-install-recommends libxi6
sudo apt-get install -y --no-install-recommends locales
sudo apt-get install -y --no-install-recommends gettext
sudo apt-get install -y --no-install-recommends texinfo
sudo apt-get install -y --no-install-recommends valgrind
sudo apt-get install -y --no-install-recommends dbus-x11
sudo apt-get install -y --no-install-recommends libxext6
sudo apt-get install -y --no-install-recommends mercurial 
# sudo apt-get install -y --no-install-recommends python3-tk
sudo apt-get install -y --no-install-recommends mesa-utils
sudo apt-get install -y --no-install-recommends subversion
sudo apt-get install -y --no-install-recommends terminator
sudo apt-get install -y --no-install-recommends libssl-dev
sudo apt-get install -y --no-install-recommends gnutls-bin
sudo apt-get install -y --no-install-recommends libbz2-dev
sudo apt-get install -y --no-install-recommends zlib1g-dev
sudo apt-get install -y --no-install-recommends libxfixes3 
sudo apt-get install -y --no-install-recommends libxrandr2 
sudo apt-get install -y --no-install-recommends subversion 
sudo apt-get install -y --no-install-recommends default-jre
sudo apt-get install -y --no-install-recommends default-jdk
sudo apt-get install -y --no-install-recommends lsb-release
sudo apt-get install -y --no-install-recommends libxcursor1
sudo apt-get install -y --no-install-recommends libxdamage1
sudo apt-get install -y --no-install-recommends libxrender1 
sudo apt-get install -y --no-install-recommends libldap2-dev
sudo apt-get install -y --no-install-recommends libglib2.0-0
sudo apt-get install -y --no-install-recommends libxinerama1 
sudo apt-get install -y --no-install-recommends openssh-client 
sudo apt-get install -y --no-install-recommends libxcomposite1
sudo apt-get install -y --no-install-recommends libsqlite3-dev
sudo apt-get install -y --no-install-recommends build-essential
sudo apt-get install -y --no-install-recommends libgl1-mesa-glx
sudo apt-get install -y --no-install-recommends libgl1-mesa-dri
sudo apt-get install -y --no-install-recommends libgnutls28-dev
sudo apt-get install -y --no-install-recommends ca-certificates
sudo apt-get install -y --no-install-recommends libncurses5-dev
sudo apt-get install -y --no-install-recommends software-properties-common

set +x