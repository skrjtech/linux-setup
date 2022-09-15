#!/bin/bash
curl -OL https://atom.io/download/deb -O atom-amd64.deb
sudo dpkg -i atom-amd64.deb
rm atom-amd64.deb
