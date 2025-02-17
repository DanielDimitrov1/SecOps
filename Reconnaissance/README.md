**Passive reconnaissance** is a process of gathering information about the target without directly interacting with it.  <br />
## Common Passive Reconnaissance Techniques:

    ▪ **Scanning DNS (Identifying domain records and subdomains);**  <br />
    ▪ **Social Media Intelligence (SOCMINT)** - Collecting publicly available information, such as usernames, email addresses, and job roles (This can lead to: Password spraying, Phishing, Privilege Escalation, etc);  <br />

**Active reconnaissance** <br />

Active reconnaissance involves direct interaction with the target to gather information, often leaving traces in logs.  <br />

## Common Active Reconnaissance Techniques:

    ▪ **Port scan** – Identifying open ports and services (e.g., nmap, masscan);  <br />
    ▪ **Vulnerabilitiy scanning** – Assessing security weaknesses (e.g., Nessus, BurpSuite);  <br />
    ▪ **Directory brute-forcing** – Enumerating hidden files and directories (e.g., Gobuster, Dirb);  <br />

# Passive Reconnaissance Tools <br />

1. **Discover** is a collection of reconnaissance tools requiring API keys for full functionality.
https://github.com/leebaird/discover <br />

### Installing and Running Discover

```sh
sudo git clone https://github.com/leebaird/discover
cd /opt/discover/
sudo ./discover.sh
```

2. **Maltego** https://www.maltego.com/ - is a powerful data collection tool supporting both passive and active reconnaissance  <br />
3. **OSINT Framework** https://osintframework.com/ - provides an extensive list of tools for open-source intelligence gathering <br />


# Active Reconnaissance Techniques 
▪ **Port Scanning;**  <br />
▪ **Service Enumeration** (can be done with nc or specific services like BurpSuite);  <br />


# Active Reconnaissance Tools
While some tools like **Maltego** and **Discover** support both passive and active reconnaissance, additional specialized tools include: <br />
▪ **Nmap;**  - – Network discovery and security auditing; <br />
▪ **Netcat (nc);** – Simple yet powerful networking utility for service enumeration <br />
▪ **Nikto** – Web vulnerability scanner for identifying misconfigurations and security flaws;  <br />
▪ **Gobuster / dirb** – Brute-force enumeration tools for discovering hidden directories and files;  <br />


# Vulnerability Discovery Tools and Techniques 

https://hacktricks.boitatech.com.br/pentesting/pentesting-web 

 ▪ **Nessus** - for infrastructure scope;  <br />
 ▪ **Searchsploit / Exploitdb** suitable for searching if a service is running at older version;  <br />
 ▪ **SQLmap** - automatic SQL injection discovery and exploitation, **supports Burp Requests** https://github.com/sqlmapproject/sqlmap  <br /> 
 ▪ **BurpSuite** - discovering and exploiting web vulnerabilities, works as a http proxy, meaning it can capture requests and responses.  <br />


# Analyzing Vulnerabilities

**1. SQL Injection**  - allows user to enter within the database engine, corrupting and modifying queries  <br />
    Lab: https://portswigger.net/web-security/sql-injection/lab-retrieve-hidden-data   <br />
**2. XSS**  - allows user to inject and execute custom javascript  <br />
    A simple js payload to fuzz all potential parameters and fields: "<script>alert(‘1’);</script>"  <br /> 
    More details at: https://github.com/payloadbox/xss-payload-list <br /> 
    Lab: https://portswigger.net/web-security/cross-site-scripting/reflected/lab-html-context-nothing-encoded  <br />
**3. OS Command Injection** - allows user to inject custom OS commands  <br />
    More details at: https://github.com/payloadbox/command-injection-payload-list  <br />
    Lab: https://portswigger.net/web-security/os-command-injection/lab-simple  <br />
**4. Directory Traversal**  - allows user to read local files stored on the operational system (OS)  <br />
    Lab: https://portswigger.net/web-security/file-path-traversal/lab-simple   <br />
**5.  Access Control Vulnerabilities** - user to access and work with resources, by bypassing access control restrictions  <br />
    Lab: https://portswigger.net/web-security/access-control/lab-unprotected-admin-functionality   <br />
**6. File Upload Vulnerabilities** - allows an attacker to upload and execute unknown files and executing C2  <br />
    Lab: https://portswigger.net/web-security/file-upload/lab-file-upload-remote-code-execution-via-web-shell-upload  <br />


USEFUL SOLUTIONS:


# Privilege Escalation

▪ **Linpeas.sh** https://linpeas.sh/  <br />
▪ **GTFObins** https://gtfobins.github.io/  (You can find such binaries misconfigured to allow privilege escalation)  <br />

# Metasploit

https://www.metasploit.com/ 