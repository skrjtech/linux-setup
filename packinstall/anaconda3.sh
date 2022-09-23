#!/bin/bash

pkgname=anaconda3
curl -o $pkgname.sh -OL https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
export CONDAPATH=/opt/$pkgname/bin
export PATH=$PATH:$CONDAPATH
. $pkgname.sh -bfu -p /opt/$pkgname
rm -f $pkgname.sh