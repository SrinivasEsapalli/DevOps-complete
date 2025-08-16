# Ports and errors
# Ports :
For Example if an application is using SMTP 587 so if the port i sbusy we should select tghe port from 587 to other ports like 588,589 etc.. but not 586.

- [ Dynamic Ports ](#Dynamic-Ports)
- [ RPC ports ](#RPC-ports)
- [ Default Ports ](#Default-Ports)
- [  TCP Ports ](#TCP-Ports)


# Protocols
 Protocols are rules or standards that define how data is transmitted and communicated between devices on a network. example: They are like languages computers use to talk to each other.

 Types of Protocols with Real-Time Examples:
Protocol	Full Name	                              Purpose	                        Real-Time Example
HTTP/HTTPS	HyperText Transfer Protocol / Secure	Transfers web pages	                 Opening a website like https://google.com in a browser
SMTP	       Simple Mail Transfer Protocol	           Sends emails	                 SendGrid uses SMTP to send your emails to recipients
IMAP/POP3	Internet Message Access Protocol 
               / Post Office Protocol	                Retrieves emails	                   Your Gmail or Outlook app downloading emails
FTP/SFTP	File Transfer Protocol / Secure FTP	Transfers files	                   Uploading website files to a server via FileZilla
DNS	          Domain Name System	             Resolves domain names to IP addresses	Typing www.amazon.com converts it to an IP to access the server
DHCP	       Dynamic Host Configuration Protocol	Assigns IP addresses automatically  	When you connect your laptop to Wi-Fi and it gets an IP automatically
TLS/SSL	Transport Layer Security
                / Secure Sockets Layer	               Encrypts communication	             Ensures your login details are safe on https:// websites
TCP/IP	      Transmission Control Protocol 
             / Internet Protocol	                     Core internet communication	                 Every time you stream video, browse the web, or send messages
SSH	     Secure Shell	                            Secure remote access to systems	          Using PuTTY or terminal to log in to a Linux server securely
SNMP	     Simple Network Management Protocol	       Monitors and manages network devices	  IT monitoring tools like Nagios or Zabbix check router health using SNMP


- [ Communication Protocols ](#Communication-Protocols)
- [ Network Protocols ](#Network-Protocols)
- [ LDAPS](LdAPS)


# Errors

- [ 100 ](#100)
- [ 500 ](#500)
- [ 403 ](403)


## SendGrid:
Scenario: Password Reset Email in a Web App
You have a web application (e.g., a job portal or e-commerce site), and when a user forgets their password:

The user clicks "Forgot Password."

Your app sends an API request to SendGrid to send the password reset email.

SendGrid processes the request and sends the email using SMTP or HTTPS, applying security protocols like TLS.

The user receives the email within seconds in their inbox.

You can track whether the email was delivered, opened, or clicked using SendGrid’s webhooks or dashboard.

📦 Real-Time Use Cases of SendGrid:
Use Case	                               Example
Transactional Emails	                        Sending password resets, order confirmations, invoices, or OTPs from your application
Marketing Emails	                        Sending newsletters, promotions, or product updates to a list of subscribers
Email API Integration	                 Using SendGrid's Email API in a Node.js, Python, or .NET backend to send and track emails
Domain Authentication	                 Setting up SPF, DKIM, and DMARC via DNS so your emails don’t go to spam
Event Tracking	                        Tracking when users open your emails, click links, or unsubscribe


## What is TLS? (Transport Layer Security)
TLS (Transport Layer Security) is a cryptographic protocol used to secure data transmission over the internet. It ensures that data sent between two systems (like a browser and a web server or an email client and an email server) is encrypted, authenticated, and tamper-proof.

💡 Real-Time Examples of TLS
✅ Example 1: Visiting a Secure Website
Scenario: You open https://www.amazon.com in your browser.

What Happens:

The browser initiates a TLS handshake with Amazon's server.

A secure connection is established.

All data (login credentials, payment info, etc.) is encrypted.

🔐 TLS in Action: You see the padlock 🔒 icon in the browser's address bar.

✅ Example 2: Sending Email with SendGrid (or Any SMTP Server)
Scenario: Your app sends a transactional email via SendGrid.

What Happens:

SendGrid connects to the recipient’s mail server using SMTP with STARTTLS.

If the recipient supports TLS 1.2 or higher, the connection is encrypted.

The email contents (subject, body, attachments) are protected from interception.



## DLL (dynamic library):

DLL (Dynamic Link Library) is a file format used in Windows operating systems that contains code and data that multiple programs can use simultaneously.

File extension: .dll

It helps with code reusability, modularity, and efficient memory usage.

🧠 Real-Time Example of DLL Usage
✅ Example 1: Microsoft Word Using a DLL for Printing
Scenario: You click “Print” in Microsoft Word.

What Happens:

Word calls a Windows printing DLL (like winspool.drv) to interact with your printer.

The DLL handles the printing logic, so Microsoft Word doesn't need to include that code itself.


## Default Ports
 ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2074.jpg)

Port 80: HTTP (Hypertext Transfer Protocol) for unencrypted web traffic.
Port 443: HTTPS (HTTP Secure) for encrypted web traffic.
Port 21: FTP (File Transfer Protocol).
Port 22: SSH (Secure Shell) for secure remote login and file transfer.
Port 25: SMTP (Simple Mail Transfer Protocol) for sending email.
Port 3389: RDP (Remote Desktop Protocol) for remote access to a computer.
Port 53: DNS (Domain Name System) for translating domain names to IP addresses.
Port 110: POP3 (Post Office Protocol version 3) for receiving email.
Port 143: IMAP (Internet Message Access Protocol) for receiving email.
Port 88: Kerberos (used for authentication).
Port 23: Telnet (legacy protocol for remote login). 


## TCP Ports
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2075.jpg)

Tcp is like road we are using it to connect to the client and server.


The TCP protocol uses specific port numbers for different services. Some common default TCP ports include port 21 for FTP, port 22 for SSH, port 23 for Telnet, port 25 for SMTP, port 80 for HTTP, port 443 for HTTPS, and port 110 for POP3. 




## RPC ports
## RPC 135, 49152 - 655535( Remote Procedure call)
- These are general purpose ports Just the general communication from the Microsoft servers.
- RPC allows a program to execute code on a remote server. It is commonly used for communication between distributed systems, including windows services like DTC.
### RPC 135 - used to establish initial connection between client and server.

- 49152 - 655535( Remote Procedure call)  - used for further communication.

- RPC Enables DTC transactions, remote windows management, and active directory replication.


## Dynamic Ports
- These are temporary ports assigned by the OS. When an application or service requests a network connection.

- and are closed after the connection is closed.
- Port Ranage is 49152 - 65535.









## 100
- Indicates that the server has received the initial part of the request and the client should continue sending the rest. 

## 403
- 403 Forbidden: The server understands the request but refuses to authorize it. x`

## 500
- A 500 error, or "Internal Server Error," is a generic HTTP status code indicating a problem on the server-side, preventing it from fulfilling the request, and is not a user-side issue.


## Other
- 301 Moved Permanently: The resource has been permanently moved to a new location. 
302 Found: The resource has been temporarily moved to a new location. 
304 Not Modified: The resource has not been modified since the last request. 
4xx (Client Error):
These codes indicate that the request contains bad syntax or cannot be fulfilled. 
400 Bad Request: The server cannot process the request due to a client error. 
401 Unauthorized: The client needs to authenticate to access the resource. 

404 Not Found: The server cannot find the requested resource. 
405 Method Not Allowed: The request method is not allowed for the requested resource. 
408 Request Timeout: The server timed out waiting for the request. 
410 Gone: The requested resource is no longer available. 
429 Too Many Requests: The client has sent too many requests in a given amount of time. 
5xx (Server Error):
These codes indicate that the server failed to fulfill an apparently valid request. 
500 Internal Server Error: A generic error indicating that the server encountered an unexpected condition. 
501 Not Implemented: The server does not support the functionality required to fulfill the request. 
502 Bad Gateway: The server received an invalid response from another server it used to fulfill the request. 
503 Service Unavailable: The server is currently unavailable. 
504 Gateway Timeout: The server timed out waiting for a response from another server. 



## Communication Protocols
- It defines how data is transmitted beween the devices.

Protocol	                Purpose	                                                     Example
HTTP / HTTPS	            Web communication (insecure/secure)	                         Browsing websites
FTP / SFTP	                File Transfer (SFTP = Secure)	                             Uploading files to a server
SMTP / IMAP / POP3	        Email communication	                                         Sending/receiving emails
Telnet	                    Remote command-line access (insecure)	                     Legacy remote login
SSH	                        Secure remote shell access	                                 Secure login to remote systems
WebSocket (WS/WSS)	        Persistent full-duplex communication	                     Real-time apps (chats, games)



## Network Protocols
- These define how devices find and talk to each other over a network.

Protocol	                        Purpose	                                            Example
IP (IPv4/IPv6)	                    Addressing and routing	                            Assigning addresses
TCP	                                Reliable, connection-oriented transmission	        Email, web traffic
UDP	                                Fast, connectionless transmission	                Streaming, VoIP
ICMP	                            Network diagnostics	                                ping, traceroute
ARP	                                Maps IP to MAC addresses	                        Local device communication


  ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2068.jpg)


  ### TCP/IP
   - Initially application layer will have diffrenet protocols - SMTP, HTTP, FTP

   they will have their own port numbers (SMTP - 587, HTTP - 80, FTP- 20) so that trnsport layer will know it is comming from which application layer protocol.

- Then the data will be divided into small packets and transmitted to the destination where each packet have header codes etc.. it will formed as the original data(image etc.)

IP - Then packets will have Ip address so that it will have both sender and receivers IP address details.

then data is send to final network layer - MAC address etc..so that packets goes to right physical machines. 



## TCP/IP vs HTTPS – What's the Difference

- TCP/IP is a low-level protocol suite that governs how data is transmitted over the internet or any network.

- HTTPS is a high-level protocol built on top of TCP/IP, specifically over HTTP using SSL/TLS encryption.

Think of it like this:

TCP/IP is the highway; HTTPS is a secure, armored car traveling on it.

## Other
## Data Transfer Protocols
- Used specifically for transferring files or data between systems.

Protocol	                    Use
TFTP	                        Lightweight version of FTP
NFS	                            Network file sharing (Unix/Linux)
SMB/CIFS	                    File sharing on Windows
rsync	                        File sync and transfer (efficient)

## Application Layer Protocols (OSI Layer 7)
- Used by applications to interact with the network.

Protocol	                    Description
DNS	                            Resolves domain names to IP addresses
DHCP	                        Assigns IP addresses dynamically
LDAP	                        Directory services and authentication
SNMP	                        Network monitoring and management
SOAP / REST	                    Web service APIs

## Security Protocols
- Used to secure communication and authenticate users or devices.

Protocol	                         Purpose
SSL/TLS	                             Encrypts data (HTTPS, FTPS, SMTPS)
IPSec	                             Secure IP communications (VPNs)
Kerberos	                         Authentication protocol (e.g., Windows AD)
OAuth / SAML / OpenID	             Identity and access management

## Protocol Layers (Quick Reference)
Layer	                    Example Protocols
Application	                HTTP, FTP, DNS
Transport	                TCP, UDP
Network	                    IP, ICMP
Data Link	                Ethernet, ARP
Physical	                Wi-Fi, Ethernet cables



## LDAPS
-  Light weight direct access protocol Secured.


- LDAP - transfer the data on plain text it is not secured, on port 389
- LDAPS - Light weight direct access protocol Secured. uses SSL certs for transmitting the data betweeen client and server.
       - It will encrypt the data and transmits it.
       - It uses port 636.
       - Certificates: Requires valid SSL/TLS certificates on the LDAP server. Clients may also need to trust the certificate authority (CA) issuing those certificates.
       - Secure authentication, user directory lookups, and access control integrations (e.g., with Active Directory, OpenLDAP).

## Servers - LDAP servers are servers that implement the Lightweight Directory Access Protocol (LDAP) 
Example servers are
Microsoft Active Directory (AD)	: Most widely used LDAP-compatible directory service for Windows environments.
OpenLDAP :  Open-source, highly customizable LDAP server implementation.
Apache Directory Server	: Java-based LDAP server, part of the Apache Software Foundation.
389 Directory Server	: Enterprise-class open-source LDAP server from Red Hat.
Oracle Internet Directory (OID) : LDAP implementation by Oracle for enterprise environments.


## Active Directory :
Active directory
- ADDS(active directory Domain services) - structured data store of objects
- Windows server and active directory
it's where user account are stored - we can stores there accounts in active directory such as username and password their address all kind info so that login and access data
- computer account will have stored in AD -  unified user details and computer credentials (paswrord and it does havbe severity identity)
- Groups - data store in active groups take user into group and we can give permission to groups, we can take comuter put them in to group or nesting groups, groups will make most administartors simple.
- other object (printers, shares, GPO) - printer easier to find for larger org, we can easily found in active directory.



















