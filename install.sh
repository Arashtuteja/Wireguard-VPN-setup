
#!/bin/bash

# Update system and install required packages
apt update && apt upgrade -y
apt install -y wireguard qrencode

# Enable IP forwarding
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf
sysctl -p

# Create WireGuard config directory
mkdir -p /etc/wireguard

# Copy wg0.conf to /etc/wireguard/
cp wg0.conf /etc/wireguard/wg0.conf
chmod 600 /etc/wireguard/wg0.conf

# Enable and start WireGuard
systemctl enable wg-quick@wg0
systemctl start wg-quick@wg0

echo "WireGuard VPN setup complete!"
