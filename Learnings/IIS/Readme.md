# IIS 

- [ Introduction ](#Introduction)
- [ webserver ](#webserver)
- [ windowsserver ](#windows-server)
- [ why IIS ](#why-IIS)
- [ IIS installation](#IIS-installation)
- [ Importing Certs In IIS ](#Importing-Certs-In-IIS)
- [ Command to install IIS ](#Command-to-install-IIS)
- [ creating new website](#creating-new-website)
- [ IIS bindings ](#IIS-bindings)
- [ Application pools ](#Application-pools)


## Introduction
- It stands for Internet Information services.

- IIS is a webserver and it is from microsoft which enables to host websites and applications on windiws server.
- It also helps to serve HTML pages, run .Net applications and host various types of content like images,videos,webservices.
- It is a windows component.
- It is responsible for hosting both web and FTP sites on server.

CMD: Open RUN -> inetmgr.

## webserver: 
- A web server is a software or hardware that stores, processes, and delivers websites to users over the internet. It handles requests from web browsers (like Chrome, Firefox) and sends back web pages.

Ex:- IIS (Windows-based)
- Apache HTTP Server (Cross Platform)
- Nginx (Cross Platform, High-performance web server)


### Role of a Web Server:
A user (client) requests a website by entering a URL (www.sample.com) in a web browser.
The request is sent to a web server like IIS.
The web server processes the request & sends the appropriate web page back to the browser.
The browser displays the web page to the user.

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2057.jpg)


## windows server:
It is an operating like Windows 10 or Windows 11, but instead of being built for personal use, it's made for running servers that handle tasks like file storage, websites, databases, and security management.  


# why IIS

IIS comes with a user-friendly management interface (IIS Manager) and integrates well with Windows tools.
Built-in features like SSL/TLS support, authentication mechanisms, and request filtering help keep your web applications secure.
IIS can handle everything from small personal websites to large enterprise-level applications with high traffic.
Features like dynamic compression, caching, and HTTP/2 support ensure fast and efficient content delivery.
IIS can be customized with modules and extensions to meet specific requirements.



## IIS installation

- For installing the IIS I'm using the Amazon windows ec2 instance as the windows server.
- Amazon EC2 (Elastic Compute Cloud) allows businesses and developers to run Windows Server instances without managing physical hardware. With AWS EC2, you get flexibility, scalability, and cost-effectiveness while maintaining full control over your Windows Server environment.

### Launching EC2 Instance

- Go to the AWS Management Console.
- Navigate to the EC2 dashboard under the Compute section.
- Launch an instance.
- Give a name to the instance, such as My Server — IIS.
- Choose a Windows Server AMI (Ex: Windows_Server-2025-English-Full-Base)
- Choose an instance type like t3.medium or so.
- Select a key pair for secure access.
If a key pair isn’t available, we need to create one.
- Security Group — Allow RDP (port 3389) for remote access and HTTP (port 80) for web traffic.
- And then the Launch Instance option.

### Now connecting to windows server 

- Once the above EC2 is launched and running fine, we need to connect to the server.
- Select the Instance and then the Connect option.

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2058.jpg)

- Choose the RDP client option.
- Download the remote desktop file.
- Then, Get the password option to login to the server.
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2059.jpg)


- For the password, we need to upload the private key (the key pair which associated with the respective server)
- Decrypt the password option and copy the password.

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2060.jpg)

- Open the above downloaded RDP file.
- Provide the credentials (Username, and password) to log in.

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2061.jpg)


### Installing IIS on the Server
Start → Control Panel → Programs → Turn Windows features on or off

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2062.jpg)

- Once the Server Manager is opened, select the Add Roles and Features option from the Manage section.

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2063.jpg)

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2064.jpg)




check the content in the document:



# Importing Certs In IIS
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2069.jpg)


- Select the server and right click
- From right hand side IIS select certificates
- Right Click import
- Browse to the certificate location and add it with password which is used while exporting.


![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2070.jpg)

Select certificate store should be where we imported the Cert like personal, webhostingetc..

- Goto particular website and right click the website and edit bindings then select the respective Cert.

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2071.jpg)


![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2072.jpg)


## Command to install IIS

- This is a power shell command run it as administrator.
Install-windowsFeature -name web-server -IncludeManagementTools

## creating new website

- There will be a default website and create a website.

- Bindings 
- to differentiate from the default website to new website chnage the bindings.

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2077.jpg)

- for the DNS name ex: mywebsite.com assign the local IP at the below location it just act as the local DNS.

C:\Windows\System32\drivers\etc

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2078.jpg)


## IIS-bindings

- In IIS there are many websites are hosted and IIS bindings will help to direct the request to the particular website by using website bindings.

- IIS bindings will help to bind the website to particular Ip by selecting default Ip or any IP and in IIS and removing the DNS name.
- IIS and port number.

## Application-pools
Application pool is the container where the website will execute and be processed in.

- each website have same application pool or multiple website can use same Application pool.

- Creating sepearate application pools helps to use different Framework, Security and settings.

- we can also create 2 application pools for the same webiste. if we have a error or restart one the other one will not effect.


### Application pool Identity

- will have worker processor and takes the built in account like local service, local system etc.

local system - high priveliges
local srvice - ex - service acount.
NetworkService - Less privilege that can acces network resources with anonymous user.
application  pool - creted when website created

- note less privileged account will help to secure the system when it is hacked.

- If we are running different websites on same application pool and if we change the anything in Application it will effect both of them.
- we can use one website with two application pools as some part of the website ( folders) needs to do somethig this will be helpful.


### Application pool Advanced settings.
General:
.NET CLR Versionb - Common language runtime. This is different from .net version, for each framework it has different version.
queu length - requests axccepted by server.


CPU:
Limit - % usage of cpu
Limit action - action on IIs proces id kill etc,
            throatle - will not go over the limit.

limit interval - rest time between monitoring.



Process Model: performance 
Even lof - tru or false.
identity - user acciunt/built in or user.
idle timeout - application pool set to idle when it;s idle. 0 for production - make over head on performance don't want to shutdown for user requests.. so application never shutdown whent it's idle.

load user profile - true - user profile will be loaded with Application pool and create a user folder in C drive.
flase - applicatio pool launches/.
Maximum worker process - allow using same processes for multiple applucation pools.

Ping enabled - health monitoring, IIS server will ping webnsite or applicatio pool.
incertain time - to check for application and if it doesn't respond for 90 seconds it will terminate the process.  
shutdown time limit - used by application pool for suhutdown.

















