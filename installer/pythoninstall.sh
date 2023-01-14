#!/bin/bash

PYTHON_VERSION=$1
sudo apt install -y curl xz-utils make cmake
curl -O https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz      
tar xJf Python-$PYTHON_VERSION.tar.xz                                                        
rm -rf Python-$PYTHON_VERSION.tar.xz                                                         
cd Python-$PYTHON_VERSION                                                                    
./configure --prefix=/usr/local/python --with-ensurepip                                      
make                                                                                         
sudo make install                                                                                 
cd ../                                                                                         
rm -rf Python-$PYTHON_VERSION                                                                
ln -s /usr/local/python/bin/python3 /usr/local/python/bin/python                             
ln -s /usr/local/python/bin/pip3 /usr/local/python/bin/pip
echo 'export PATH=/usr/local/python/bin:$PATH' >> ~/.bashrc   
echo 'export PYTHONDONTWRITEBYTECODE=1' >> ~/.bashrc
python -m pip install --upgrade pip setuptools