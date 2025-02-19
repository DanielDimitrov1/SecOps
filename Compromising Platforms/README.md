# Security Tools and Techniques

***This repo is a very highlight collection of tools, techniques, and scanners I've used in my projects to improve security. It covers network reconnaissance, penetration testing, and security assessments. Use these tools responsibly and within legal boundaries.*** <br />


***To strengthen application security and mitigate potential threats, I have implemented the measures that are mentioned at the bottom of this file as well as in the "AWS WAF Configuration files" :***

---

## Web Enumeration Techniques

### Passive Enumeration Tools
Passive enumeration gathers information without directly interacting with the target. Some useful tools include:

- [Discover](https://github.com/leebaird/discover) – Automated OSINT collection  
- [Maltego](https://www.maltego.com/) – Visualization and analysis for OSINT investigations  
- [DNSDumpster](https://dnsdumpster.com/) – Domain and subdomain reconnaissance  

### Active Enumeration  
Active enumeration involves direct interaction with a target to identify vulnerabilities, such as input validation flaws, access control issues, or injection vulnerabilities. Common objectives include:

- Directory and file enumeration  
- Parameter enumeration  
- Authentication and session enumeration  
- Injection attacks (SQL, command, etc.)  
- Brute force attacks  
- File upload enumeration  
- Hidden parameter discovery  
- HTTP verb enumeration  
- Error message analysis  
- Cross-site request forgery (CSRF)  
- Content discovery  
- XML external entity (XXE) attacks  
- Parameter tampering  
- Insecure direct object references (IDOR)  
- Clickjacking attacks  
- Server-side template injection (SSTI)  

**Note:** Active enumeration techniques must be performed within legal and ethical boundaries. Unauthorized testing may result in legal consequences.

---

## Enumeration Tools

- **Burp Suite** – Comprehensive web security testing tool  
- **OWASP ZAP** – Open-source web security scanner  
- **Nmap** – Network scanning and security auditing tool  
- **DirBuster** – Brute-force directory and file enumeration  
- **Gobuster** – Fast directory and DNS enumeration tool  
- **Nikto** – Web server scanner for vulnerabilities  
- **Wfuzz / FFUF** – Web application brute-forcing tools  
- **Metasploit** – Penetration testing framework with enumeration capabilities  

---

## OWASP Top 10 (2021) Vulnerabilities  

- **Broken Access Control** – Improper enforcement of access restrictions  
- **Cryptographic Failures** – Weak encryption and poor cryptographic practices  
- **Injection Attacks** – Code injection vulnerabilities (e.g., SQL, command injection)  
- **Insecure Design** – Flaws in application architecture leading to security issues  
- **Security Misconfiguration** – Poorly configured security settings  
- **Vulnerable and Outdated Components** – Use of insecure third-party libraries  
- **Authentication Failures** – Weak authentication mechanisms  
- **Security Logging and Monitoring Failures** – Lack of proper security event logging  
- **Server-Side Request Forgery (SSRF)** – Unauthorized requests sent from the server  

### Common Attacks

#### SQL Injection  
Exploiting vulnerabilities in database queries to execute unauthorized commands.  

#### Cross-Site Scripting (XSS)  
Injecting malicious scripts into web pages to compromise user data.  

#### Command Injection  
Executing system commands via user input fields to gain control over the system.  

---

# File Inclusion and Directory Traversal Attacks

### Local File Inclusion (LFI)  
Exploiting applications to access local files on the server (e.g., reading system files).  The attacker could take advantage of this by manipulating the input parameter to include a path to a sensitive file on the server, such as the /etc/passwd file on a Unix-based system.

### Remote File Inclusion (RFI)  
Injecting remote files into a vulnerable application to execute malicious code.  

### Directory Traversal  
Manipulating file paths to access restricted directories outside the application root.  

---

## Authentication and Web Shells

### Broken Authentication  
Common issues include weak passwords, insecure session management, and session hijacking.  

### Web Shells  
Malicious scripts that provide unauthorized access to a web server. Examples:

- **PHP Web Shell**: [Example](https://gist.github.com/joswr1ght/22f40787de19d80d110b37fb79ac3985)  
- **JSP Web Shell**: [Example](https://github.com/tennc/webshell/blob/master/fuzzdb-webshell/jsp/cmd.jsp)  
- **ASPX Web Shell**: [Example](https://github.com/tennc/webshell/blob/master/fuzzdb-webshell/asp/cmd.aspx)  


## Types of Web Shells

- File-based web shells;
- Database-based web shells;
- Reverse shell web shells;
- Encrypted web shells;

#### Web Shell Prevention

- Keep software up to date  
- Follow secure coding practices  
- Implement strict access controls  
- Monitor server logs  
- Use Web Application Firewalls (WAFs)  
- Conduct regular security audits  

---

## Command and Control (C2) Frameworks  

C2 frameworks are used to control compromised systems. Some well-known frameworks include:

- **Metasploit** – Powerful and widely used, but often detected by antivirus solutions  
- **Cobalt Strike** – Commercial C2 platform for red team operations  
- **Empire** – Modular, open-source post-exploitation framework  
- **Covenant** – Web-based C2 framework for penetration testing  
- **Mythic** – Open-source, flexible, and extensible C2 platform 