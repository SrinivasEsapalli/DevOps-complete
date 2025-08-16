# commands


- [ netstat ](#netstat)
- [ telnet ](#telnet)
- [ nslookup ](#nslookup)
- [ diff user ](#diff-user)
- [ Power Shell ](#Power-Shell)
- [ whitelisting folders or files ](#whitelisting-folders-or-files)
- [ Disabling Anti Virus ](#Disabling-Anti-Virus)
- [ TRIM ](#TRIM)
- [ HTML Auto complete ](#HTML-Auto-complete)
- [ IIS Install ](#IIS-Install)
- [ Complete flow website ](#Complete-flow-of-a-website)

## Ping command
Ping command is used for troubleshoot connectivity, reachability, and name resolution

## ns lookup DNS.name
- It is used to check what IP is configured for that particular domain.

## IP config
- To check the system IP address.


## netstat
- netstat stands for network statistics.

### nestat -an | findstr "3581"

- a: Displays all connections and listening ports with 3581

-n: Shows addresses and port numbers in numeric form (instead of resolving names)

| find ":3581"

Filters the output to only show lines that include :3581 (your target port)


###  netstat -a
- Lists all active TCP connections (source & destination IPs and ports).
- a: Displays all connections and listening ports 


###    netstat -an 
- Shows all connections and listening ports in numeric form.
### netstat -ano  
- Displays the Process ID (PID) associated with each connection. Useful for checking which application is using a specific port.


## telnet
It is basic network command used for checking the connection between the servers.

- telnet destination_server_FQDN port
ex: telnet SER1TEST101.sri.ind.com 2393

- telnet IP  port
  telnet 10.115.231.33 2393


## nslookup  DNS name(URL)
- nslookup sri.priate.com

command is a command-line tool used to query the Domain Name System (DNS) to obtain information about domain names and their corresponding IP addresses, or other DNS records. 


## diff user

Command to run Command  prompt as different user.
runas /user:DNS\username "control appwiz.cpl"

Command to run File Explorer as different user.
runas /user:DNS\username "explorer.exe"



## Power Shell

TEST-NetConnection -ComputerName destination_server_FQDN -port
ex: TEST-NetConnection -ComputerName SER1TEST101.sri.ind.com -Port 2393


## iisreset
- For resetting IIS

## dotnet --info
- To know the .net version.
## dotnet --listsdks
To list the installed SDKS

## Adding MaP network drive

- net use drive_name location
ex: net use z: \\location


### IIS Install

- This is a power shell command run it as administrator.
Install-windowsFeature -name web-server -IncludeManagementTools



## whitelisting folders or files
### 1. Whitelist in Windows Defender (Exclusions)
This prevents Defender from scanning or blocking a file, folder, process, or file extension.

🔧 Via Windows Security GUI:
Open Windows Security (Start > search for it).

Go to Virus & threat protection.

Click on Manage settings (under Virus & threat protection settings).

Scroll down to Exclusions > Click Add or remove exclusions.

Click Add an exclusion and choose:

File

Folder

File type

Process

📌 Example: Add C:\MySafeApp\ as a folder exclusion.

💻 Via PowerShell:
powershell
Copy
Edit
# Whitelist a folder
Add-MpPreference -ExclusionPath "C:\SafeFolder"

# Whitelist a file
Add-MpPreference -ExclusionProcess "C:\SafeApp\myapp.exe"

# Whitelist a file type
Add-MpPreference -ExclusionExtension ".log"


# To view current exclusions:

powershell
Copy
Edit
Get-MpPreference | Select-Object -ExpandProperty ExclusionPath





## Disabling Anti Virus

⚠️ Before You Disable Antivirus
Only disable antivirus temporarily for testing or installing trusted software.

Make sure you are not connected to unsafe networks.

Re-enable it as soon as your task is done.

✅ 1. Temporarily Disable Windows Defender Antivirus (GUI)
Steps:
Open Windows Security (Start > search "Windows Security").

Go to Virus & threat protection.

Click Manage settings under “Virus & threat protection settings”.

Toggle Real-time protection to Off.

🔁 This will turn back on automatically after a reboot or after some time.

🧑‍💻 2. Disable via PowerShell (Run as Admin)
powershell
Copy
Edit
Set-MpPreference -DisableRealtimeMonitoring $true

## To re-enable:

powershell
Copy
Edit
Set-MpPreference -DisableRealtimeMonitoring $false


## TRIM
 -  It is the middle
 - It will TRIM the documents and we can access easily.
 - once all doc's are scanned trim will make arrangements and it will move to TotalAgility.


 ## HTML Auto complete

 - It will give the previously filled details in the form we can turn it or off.
 - name - sri if filled next time when we go to name in form it will gives sri.
 - password & sensitive info- we need turn off auto complete.




## Complete-flow-of-a-website

StepS;
DNS
Packet will be send over TCP/Ip - SYN,SYN-ACK,ACK 3ways of handshake
SSL/TLS - security 
Packet requests HTTPS to get a  website 
Server processing 
HTTPS responses
Caching

### DNS
initially when we request for a website www.example.com DNS (domain name server). DNS will convert Domain names(example.com) of a particular application into machine reable IP address.  WWW. is the host name.

### PAckets: then everything on internet will send as packets
Packet will be send over TCP/Ip - SYN,SYN-ACK,ACK 3ways of handshake

### Security - SSL/TLS - security 
- SSL: Secure Sockets Layer
- TLS: Transport Layer Security
- The certificates will be used for handshake by using private key's these are authorized/signed by certificate authority(CI) 

### Packet requests HTTPS to get a  website 
- packet request a app server to get the website.

### Server processing 
- server will process

###  HTTPS responses
- gives the response

### Caching






- IPV4 32 bit
- IPV6 128 bit