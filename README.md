# **Wireguard VPN setup from zero**

A step-by-step guide to make your own **Wireguard VPN server** from scratch!
Automated scripts are also included in this repository to help you configure **Server** and **Clients**

## **What is WireGuard?**
WireGuard is a **modern VPN protocol** that’s:  
**Fast:** Low latency with minimal overhead.  
**Secure:** Uses advanced encryption methods.  
**Lightweight:** Simpler to configure than OpenVPN and IPsec. 

## **Features** 
1. Secure and Fast VPN with Wireguard.
2. Automation Installation and Configuration
3. Supports Multiple Client
4. Easy Client Management (Add/Remove clients)


## **Pre-requistes**
Before installing/setting up, make sure you have:
1. **A VPS or a dedicated server** (Suggested Ubuntu 20.04/22.04 or later)
2. **Basic knowledge of SSH**(Optional)
3. **Git installed on your local machine**
4. **UDP Port-51820 Open** on your Firewall 
   ```bash
   ufw allow 51820/udp
   ```  
---

## **Quick Setup & Installation**(VPN server)

### **Step-1:**
#### Connect to VPS
```bash
ssh -i "address/to/the/server's/private/key/<your_privatekeyfile.key>" root@<your_server_ip>
```
**Replace the address to your private key , and use private key file using .key extensiion, Also replace your server Public IP

### **Step-2:**
#### Clone this repository
   ```bash
   git clone https://github.com/Arashtuteja/Wireguard-VPN-setup.git && cd Wireguard-VPN-Setup
   ```

### **Step-3:**
#### Run the Setup Script
```bash
cd Wireguard-VPN-setup
sudo bash install.sh
```

**Already Done!** You can now use the VPN server. All the configurations including the client configuration will be available in your current Directory

---

## File Structure
```
/Wireguard-VPN-setup
├── /Configs
│   ├── client.conf      # Sample client config
│   ├── sysctl.conf      # Enable IP forwarding
│   └── wg0.conf         # WireGuard server config
├── LICENSE              # Optional license
├── README.md            # Main instructions
└── install.sh           # Script for automatic setup
```
---

## Configuration Files
- **`/configs/wg0.conf`** - Default WireGuard server config.
- **`/configs/client.conf`** - Template for generating client configs.
- **`/configs/sysctl.conf`** - Enables IP forwarding for VPN.

---

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) for more details.

