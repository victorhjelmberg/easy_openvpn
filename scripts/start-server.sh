#!/bin/bash

#Run configuration if it hasn't been run before
EASY_OPENVPN_FLAGFILE=/etc/easy_openvpn/flag_files/configured
if [ ! -f "$FLAG_FILE" ]; then
    ./etc/easy_openvpn/scripts/build-server.sh
    touch "$FLAG_FILE"
fi

# Build client
echo "$CLIENT_PASSWORD" | easyrsa --batch --passout=stdin build-client-full client
ovpn_getclient client > /etc/easy_openvpn/client_conf/client.ovpn

# Start server
ovpn_run