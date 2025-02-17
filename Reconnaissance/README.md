**Passive reconnaissance** is the process of gathering information about the target  <br />
    (Passive reconnaissance does not generate traffic on a client side).  <br />
    ▪ **Scanning DNS;**  <br />
    ▪ **Stalking Social Media** - faving a list of valid usernames / email addresses  (it can lead to: Password spraying, Phishing, Privilege Escalation, etc);  <br />

**Active reconnaissance** is the process of gathering information about the target.  <br />
    ▪ **Port scan** (nmap, masscan);  <br />
    ▪ **Vulnerabilitiy scanning** (nessus, burpsuite);  <br />
    ▪ **Directory brute-forcing** (gobuster, dirb);  <br />

# Passive Reconnaissance Tools

1. **Discover** https://github.com/leebaird/discover is combining more tools in one ( for uninterrupted function most of them requires an API key).

### Installing and Running Discover

```sh
sudo git clone https://github.com/leebaird/discover
cd /opt/discover/
sudo ./discover.sh
```

2. **Maltego** https://www.maltego.com/ - for data collection. It can perform BOTH passive and active scans  <br />
3. **OSINT Framework** https://osintframework.com/ It can perform BOTH passive and active scans  <br />


# Active Reconnaissance Techniques 
▪ **Port Scanning;**  <br />
▪ **Service Enumeration** (can be done with nc or specific services like BurpSuite);  <br />


# Active Reconnaissance Tools
As I mentioned earlier, here we can use the tools like **Maltego** and **Discover** too because they have the capability for both kinds of reconnaissance  <br />
▪ **Nmap;**  <br />
▪ **Netcat (nc);**  <br />
▪ **Nikto** (A web application scanner, such as: backup files, basic misconfigurations, etc).;  <br />
▪ **Gobuster / dirb** (Tools for directory brute forcing, scaning for hidden directories and files);  <br />


# Finding Vulnerabilities Tools and Techniques

https://hacktricks.boitatech.com.br/pentesting/pentesting-web 

 ▪ **Nessus** - for infrastructure scope  <br />
 ▪ **Searchsploit / Exploitdb** suitable for searching if a service is running at older version  <br />
 ▪ **SQLmap** - automatic SQL injection discovery and exploitation, **supports Burp Requests** https://github.com/sqlmapproject/sqlmap  <br /> 
 ▪ **BurpSuite** - discovering and exploiting web vulnerabilities, works as a http proxy, meaning it can capture requests and responses  <br />


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