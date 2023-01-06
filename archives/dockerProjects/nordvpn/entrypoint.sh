#!/bin/bash

# NORDTOKEN
# LOCALIP

/etc/init.d/nordvpn start && /etc/init.d/squid start

nordvpn login --token $NORDVPN_TOKEN
nordvpn whitelist add subnet $LOCALIP
nordvpn c

NORDVPN_IP=$(ip -4 a show nordlynx | grep -oP '(?<=inet\s)\d+(\.\d+){3}\/(.\d+)')
IPADD=$(echo $NORDVPN_IP | sed -e 's/\//\\\//')
sed -ie "s/XXX.XXX.XXX.XXX/${IPADD}/g" /etc/squid/squid.conf
/etc/init.d/squid reload && /etc/init.d/squid restart