#!/bin/bash

# Generate OpenVPN configuration
ovpn_genconfig -u "udp://$SERVER_IP"

# Load dependencies
source "$OPENVPN/ovpn_env.sh"

# Build server
easyrsa init-pki
echo 'client' | easyrsa build-ca nopass
easyrsa gen-dh
openvpn --genkey --secret $EASYRSA_PKI/ta.key
echo 'yes' | easyrsa build-server-full "$OVPN_CN" nopass
easyrsa gen-crl