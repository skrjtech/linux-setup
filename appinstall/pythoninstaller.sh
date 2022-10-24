#!/bin/bash
PYTHON_VERSION=$1
sudo apt update
sudo apt install -y wget
sudo apt install -y gcc                 \
                    make                \
                    tk-dev              \
                    dpkg-dev            \
                    uuid-dev            \
                    libdb-dev           \
                    libffi-dev          \
                    libbz2-dev          \
                    libssl-dev          \
                    zlib1g-dev          \
                    libgdbm-dev         \
                    liblzma-dev         \    
                    libsqlite3-dev      \    
                    libreadline-dev     \    
                    build-essential     \
                    libncursesw5-dev    \
                    libbluetooth-dev                   
sudo rm -rf /var/lib/apt/lists/*
# Python ホームページ から リンクの取得 https://www.python.org/downloads/
wget --no-check-certificate "https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz"
tar xJf "Python-${PYTHON_VERSION}.tar.xz"
cd "Python-${PYTHON_VERSION}"
./configure
make
sudo make install 
sudo rm -rf "Python-${PYTHON_VERSION}*"
sudo ln -s /usr/local/bin/pip3 /usr/local/bin/pip
sudo ln -s /usr/local/bin/python3 /usr/local/bin/python
# pip upgrade
pip install --upgrade pip setuptools