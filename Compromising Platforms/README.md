***This repo is a very highlight collection of tools, techniques, and scanners I've used in my projects to improve security. It covers network reconnaissance, penetration testing, and security assessments. Use these tools responsibly and within legal boundaries.*** <br />

# Techniques for Web Enumeration
Passive Enumeration Tools
 ▪ Discover: https://github.com/leebaird/discover
 ▪ Maltego: https://www.maltego.com/
 ▪ DNSDumbster: https://dnsdumpster.com/

 Active enumeration is typically used to identify potential 
vulnerabilities and weaknesses in the web application, such as 
input validation errors, access control issues, or SQL 
injection vulnerabilities

# Fuzzing

 ▪ Fuzzing is a testing technique used to identify vulnerabilities in software applications, including web applications
 ▪ It involves testing the application by submitting input data with unexpected or invalid values, in order to trigger unexpected behavior or errors

#  Active Enumeration Objectives:

***Legal implications: Performing active enumeration techniques without proper authorization or permission can lead to legal repercussions, such as violating computer misuse or hacking laws***

- Directory / file enumeration;
- Parameter enumeration;
- Authentication enumeration;
- Session enumeration;
- Injection attacks;
- Brute force attacks;
- File upload enumeration;
- Hidden parameter enumeration;
- HTTP verb enumeration;
- Error message enumeration;
- Session fixation attacks:;
- Cross-site request forgery (CSRF) attacks;
- Content discovery;
- XML external entity (XXE) attacks;
- Parameter tampering;
- Insecure direct object references (IDOR);
- Clickjacking attacks;
- Server-side template injection (SSTI) attacks;

## Tools for Enumeration
 ▪ Burp Suite is a powerful and widely-used web application security testing tool;
 ▪ OWASP ZAP is a free, open-source web  application security testing tool that includes features for both active and passive web application enumeration
 ▪ Nmap is a network exploration and security auditing tool that can be used for active enumeration of web applications by scanning for open ports and services
 ▪ Dirbuster is a tool that can be used for active enumeration of web application directories and files by brute forcing directories and paths
 ▪ Gobuster: Gobuster is another tool that can be used for active directory enumeration by brute-forcing directories and files
 ▪ Nikto: Nikto is a web server scanner that can be used for active web application enumeration by scanning for common vulnerabilities and misconfigurations
 ▪ Wfuzz/Ffuf: Wfuzz/ffuf is a web application brute-forcing tool that can be used for active enumeration by testing different input values and combinations;
 ▪Metasploit: Metasploit is a penetration testing framework that includes features for active web application enumeration and exploitation


#  The current OWASP Top 10 list (2021) includes:
▪ Broken Access Control - lack of proper access controls on administrative functions, improperly enforced user permissions, insecure direct object references;
▪ Cryptographic Failures - weaknesses in cryptographic protocols and algorithms used in web applications;
▪ Injection - attacker is able to inject malicious code into a web application that is then executed by the application's backend. The most common type of injection attack is SQL injection **(SQL)**;
▪ Insecure Design - issues related to the design and architecture of web applications that can lead to security weaknesses;
▪ Security Misconfiguration - failure to properly configure security settings and mechanisms in web applications;
▪ Vulnerable and Outdated Components - the use of outdated or vulnerable third-party components in web applications, which can leave them vulnerable to attacks;
▪ Identification and Authentication Failures - the failure to properly identify and authenticate users and systems in web applications;
▪ Security Logging and Monitoring Failures - the failure to properly log and monitor security-related events
▪ Server-Side Request Forger (SSRF) - allows attackers to send unauthorized requests from a vulnerable web application to internal or external resources
 
### SQL Injection
### XSS 
XSS attacks are carried out is by injecting malicious code into user input fields, such as search bars or contact forms

### Command Injection
The attacker could enter something like "file; ls -la" into the search field, and the application would execute the "ls -la" command in addition to searching for the file

# LFI Attack

▪ LFI (Local File Inclusion) an attacker can exploit the application to access sensitive files on the server by manipulating the input parameters of the application that are used to locate files 
▪ An attacker can take advantage of this by manipulating the input parameter to include a path to a sensitive file on the server, such as the /etc/passwd file on a Unix-based system.

# Directory Traversal
▪ Directory Traversal, is an attack that allows an attacker to access files outside of the web application's root directory 
▪ The attacker typically exploits the application's use of user input to construct file paths and can use this to access files that are stored outside of the web application's root directory ▪The main difference between LFI and DT is that LFI involves the inclusion of files that are on the same system as the web application, while DT involves accessing files outside of the web application's root directory

# RFI Attack
▪ Remote File Inclusion (RFI) is a type of web application vulnerability where an attacker can include a remote file, usually in the form of a script or program, on a website or web application ▪The attacker can exploit this vulnerability to execute arbitrary code on the server, which can lead to the complete compromise of the web application and the server itself

▪ Examples of RFI attacks include an attacker using a vulnerable web application to include a remote PHP file that contains malicious code designed to steal passwords or other sensitive data, or to execute a distributed denial-of-service (DDoS) attack by flooding the server with requests

# Broken Authentication
Weak or predictable passwords;
 Insecure session management;
 Flawed authentication design: 
 Vulnerable third-party components
  Session hijacking or fixation;
  Insecure authentication protocols;


# Web Shell
A type of malicious script or program that attackers upload to a web server to gain unauthorized access and control of the server

##  Examples of Web Shell
 ▪ PHP:
https://gist.github.com/joswr1ght/22f40787de19d80d110b37fb79ac3985
 ▪ JSP: 
https://github.com/tennc/webshell/blob/master/fuzzdb-webshell/jsp/cmd.jsp
 ▪ ASPX: 
https://github.com/tennc/webshell/blob/master/fuzzdb-webshell/asp/cmd.aspx


## Types of Web Shells

File-based web shells;
Database-based web shells;
Reverse shell web shells;
Encrypted web shells;


##  Web Shells Prevention

 ▪Keep software up to date: 
 ▪ Follow secure coding practices: 
 ▪ Implement proper access controls: 
 ▪Monitor web server logs: 
 ▪Use web application firewalls (WAFs): 
 ▪Conduct regular security audits: 
 ▪Remove unnecessary web applications and files: 


# C2
Command and Control framework is a tool or platform used by cyber attackers to communicate with and control compromised systems or devices

## C2 Frameworks

Metasploit is a powerful and widely used C2 framework that allows for the creation of custom payloads and modules. One of its weaknesses is that it can be easily detected by antivirus software


Cobalt Strike is a commercial C2 framework that is popular among penetration testers and red teamers

Empire is an open-source C2 framework that is designed to be modular and extensible;
Covenant is an open-source C2 framework that is designed to be easy to use and flexible ▪ It has a user-friendly web-based interface and supports a wide range of platforms. It also has a variety of built-in modules and can be extended with custom module


Mythic is an open-source C2 framework that is designed to be easy to use and flexible. It has a user-friendly web-based interface and supports a wide range of platforms
