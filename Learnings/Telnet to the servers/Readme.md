# Telnet:


- [ Intro ](#Intro)
- [ Opening Ports on the remote system ](#Opening-Ports-on-the-remote-system)

## Intro
-> It helps to communicate between source and destination. and check connection between them.
-> If there is any connection issue first thing we need to check the telnet and logs then if conneCtion is lost means raise ticket to network team.
-> it is a protocol allows users to access and communicate with remote computers. /it's short for telecommunication network.
 system. 
- everything should be in the form of commands.
- Users can log in to a remote computer and use it as if they were physically there
->  Telnet can be used to remotely manage a device or server 
### Default port.
- Port 23 is the normal default Telnet port.



## Opening Ports on the remote system
-> Telnet - is Ip connection. 
ex: source want to connect to destination server. 

ex:
To use Telnet, open a Command Prompt or PowerShell window
Type telnet <target ip> <target port>
Press enter on your keyboard

-> It will open the particular PORT on the target system. so that we are able to connect to the source and destination.

->
It will show the connection successfull. Means It will break the firewall and connect it. and we will get the black screen once the PORT is open.
-> If it is not succeful. Firewall is not connecting. Then we need to ask firewall team to open this connection request to this port.

-> if connection or data flow is one way then we need to check the flow from one way.

For example app server -> db server .
 - If there is one way connection means we need to check in that way only not from db server to app server.

## To access remote computer.
- It will help to access the remote computer.

ex: Telnet Ip address.
 

 TELNET is not at all secured to use.

