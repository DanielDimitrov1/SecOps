***This repo is a very highlight collection of tools, techniques, and scanners I've used in my projects to improve security. It covers network reconnaissance, penetration testing, and security assessments. Use these tools responsibly and within legal boundaries.***


## **WPA2-PSK Cracking**
The most common method for cracking **WPA2-PSK** is through an **offline brute-force attack**, which involves attempting multiple password combinations until the correct one is found.  
🔹 *Prerequisite:* Capture a **valid handshake** from an active client on the network.

### Tools Used (Aircrack-ng Suite)
- **`airodump-ng`** – Analyzes networks and captures handshakes.
- **`aireplay-ng`** – Performs deauthentication attacks.
- **`aircrack-ng`** – Cracks the password using the captured handshake.

### Capturing Packets for a Target Network
```sh
sudo airodump-ng --bssid <target_BSSID> --channel <target_channel> --write <output_file> wlan0mon
```

### Cracking the Password
```sh
aircrack-ng -w <wordlist_file> <handshake_file>
```

---

# Denial-of-Service (DoS) & Distributed Denial-of-Service (DDoS) Attacks

## Common Tools
- **HOIC (High Orbit Ion Cannon)** – Open-source stress testing tool for websites and networks.  
  [Download Here](https://sourceforge.net/projects/highorbitioncannon/)
- **LOIC (Low Orbit Ion Cannon)** – Open-source network stress testing tool used for **DoS attacks**.  
  [Download Here](https://sourceforge.net/projects/loic/)
- **hping3** – A powerful **network testing** and **security auditing** tool.

### Example hping3 Command
```sh
sudo hping3 -S --flood -V -p <IP_ADDRESS>
```

- **torshammer.py** – A Python script for **DDoS attacks**.  
  [GitHub Repository](https://github.com/Karlheinzniebuhr/torshammer)

### Example torshammer Command
```sh
python torshammer.py -t 192.168.1.100 -r 100000 -T
```

---

# **Network Reconnaissance**

## Nmap
[Nmap Cheat Sheet](https://www.stationx.net/nmap-cheat-sheet/)
```sh
nmap -p 80 --script http-generator.nse
nmap -p 443 --script=http-headers,http-title,http-generator 
nmap --script="default and http-*"
```

## Masscan
[Masscan Cheat Sheet](https://cheatsheet.haax.fr/network/port-scanning/masscan_cheatsheet/)
```sh
masscan -p80,443,8080,8443,81,4444,4443,8888 70.176.0.0/16
```

## Netdiscover
[Netdiscover Cheat Sheet](https://neverendingsecurity.wordpress.com/2015/04/07/netdiscover-cheatsheet/)
```sh
sudo netdiscover
```

## Bettercap
[Bettercap Cheat Sheet](https://github.com/Lifka/hacking-resources/blob/main/session-hijacking-cheat-sheet.md)
```sh
sudo bettercap
```

---

# **Nessus - Vulnerability Scanner**
[Nessus](https://www.tenable.com/products/nessus) is a widely used **commercial vulnerability scanner** designed to identify **security threats**, missing patches, misconfigurations, and vulnerable software.

### Installation & Setup
```sh
wget 'https://www.tenable.com/downloads/api/v1/public/pages/nessus/ downloads/18394/download?i_agree_to_tenable_license_agreeme nt=true' -O Nessus_amd64.deb
sudo apt install -f ./Nessus_amd64.deb
sudo systemctl enable nessusd
sudo systemctl start nessusd
systemctl status nessusd
```

> **Note:**  
> 1️⃣ Once installed, navigate to the Nessus web UI.  
> 2️⃣ If you cannot create a new scan immediately, the plugins may still be initializing.  

---

# ARP Spoofing & MITM Attacks

### **Tools**
- **Ettercap** – [Official Website](https://www.ettercap-project.org/)
- **MITM Framework** – [GitHub Repository](https://github.com/byt3bl33d3r/MITMf)
- **Driftnet** – [Kali Linux Tool](https://www.kali.org/tools/driftnet/)

### **Performing MITM Attacks with Bettercap**
```sh
sudo apt-get install bettercap
sudo bettercap --iface <interface>
```

### **Running an ARP Spoofing Attack**
```sh
net.probe on
set arp.spoof.duplex true
set arp.spoof.targets 192.168.74.128
arp.spoof on
net.sniff on
```

---

# **SSL Verification & MITM Prevention**
To prevent **MITM attacks** through **SSL verification**, ensure the following:  
✅ The **SSL certificate** is issued by a **trusted Certificate Authority (CA)** and is **not revoked**.  
✅ The **domain name** in the certificate matches the **website’s domain**.  
✅ Use **OpenSSL** to manually check certificate details when necessary.

### **Checking SSL Certificate with OpenSSL**
```sh
openssl s_client -connect <website>:443
```