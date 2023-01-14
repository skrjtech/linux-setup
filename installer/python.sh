#!/bin/bash

# PYTHON INSTALL
PYTHON_VERSION=$1
sudo apt install -y curl make cmake tk-dev xz-utils uuid-dev libdb-dev libssl-dev zlib1g-dev libbz2-dev libffi-dev \
                    libgdbm-dev liblzma-dev libsqlite3-dev build-essential libreadline-dev libncursesw5-dev
curl -O https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz      
tar xJf Python-$PYTHON_VERSION.tar.xz                                                        
rm -rf Python-$PYTHON_VERSION.tar.xz                                                         
cd Python-$PYTHON_VERSION                                                                    
./configure --prefix=/usr/local/python --with-ensurepip                                      
make                                                                                         
sudo make install                                                                                 
cd ../                                                                                         
rm -rf Python-$PYTHON_VERSION                                                                
sudo ln -s /usr/local/python/bin/python3 /usr/local/python/bin/python                             
sudo ln -s /usr/local/python/bin/pip3 /usr/local/python/bin/pip
export PATH=/usr/local/python/bin:$PATH
echo "export PATH=${PATH}" >> ~/.bashrc   
echo 'export PYTHONDONTWRITEBYTECODE=1' >> ~/.bashrc
source ~/.bashrc
# PIP UPDATE
python -m pip install --upgrade pip setuptools