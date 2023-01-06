#!/bin/bash

# NORDTOKEN
# LOCALIP

/etc/init.d/nordvpn start
sleep 5
/etc/init.d/squid start
sleep 5

nordvpn login --token $NORDVPN_TOKEN
nordvpn whitelist add subnet $LOCALIP
nordvpn c

sleep 5

NORDVPN_IP=$(ip -4 a show nordlynx | grep -oP '(?<=inet\s)\d+(\.\d+){3}\/(.\d+)')
IPADD=$(echo $NORDVPN_IP | sed -e 's/\//\\\//')
sed -ie "s/XXX.XXX.XXX.XXX/${IPADD}/g" /etc/squid/squid.conf
/etc/init.d/squid reload && /etc/init.d/squid restart