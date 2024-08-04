# Linux security
### man command name
- to get complete decription of a command wwith their tags..
- [linux security](#linux-security)
- [accounts](#accounts)
- [Access control files](#Access-control-files)
- [ ssh ](ssh)
- [ iptables ](iptables)

## linux Security

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%206.jpg)

## access controls
- it has user name and password based authentication to determine who can access the system.
## PAM - pluggable authentication model
- used to authneticate users to prograns and services in lux.
## network security
- Used to allow or restrict access to services listening on linux server..
## ssh handloing - secured shell
- To remote access to a server over unsecured network..

## SELinux
- It makes security policys for isolating applications running on the same isolating applications.. 
- isolating app - self describing applications.

### accounts
## Users
- user info is stored in /etc/passwd directory
- group info is at /etc/group
### id username
- gives uid and gid
### id 
- gives uid and gid and groups
### who
- Gives who logined into system
### last
- When the last reboot is done.


### service accounts
- These are created when we install a sercvic ex: nginx etc

### switching users
###  su -i
- to switch to  root user
### su -
- to switch to any other users
### sudo 
- super user


### Access control files
- these are read only files
### /etc/passwd
- grep -i ^bob /etc/passwd
bob:x:1001:1001::/home/bob:/bin/bash
USERNAME:PASSWORD:UID:GID:GECOS:HOMEDIR:SHELL

### /etc/shadow
- user passwords are stored here in encrypted way
-  grep -i ^bob /etc/shadow
bob:$6$0h0utOtO$5JcuRxR7y72LLQk4Kdog7u09LsNFS0yZPkIC8pV9tgD0wXCHutY
cWF/7.eJ3TfGfG0lj4JF63PyuPwKC18tJS.:18188:0:99999:7:::
- USERNAME:PASSWORD:LASTCHANGE:MINAGE:MAXAGE:WARN:INACTIVE:EXPDATE

### /etc/group
- grep -i ^bob /etc/group
developer:x:1001:bob,sara
NAME:PASSWORD:GID:MEMBERS


### Root user commands
#### useradd user_name
- To add new user
#### passwd user_name
- to set password for user..
#### passwd 
- to change password for user..

#### userdel user_name
- To delete a new user
#### groupadd group_name
- To add a new group
#### groupdel group_name
- To delete a new group
#### sudo grep bob /etc/sudoers
- Command to check the user permissions..





### ssh 
- secured shell
#### ssh <user>@<hostname OR IP Address>

 ### ssh password less with key pair generation
#### ssh-keygen -t rsa
- key genration
- it will generate public and private keys with below locations
  PublicKey:/home/username/.ssh/id_rsa.pub
  Private Key:/home/username/.ssh/id_rsa
  - ssh-copy-id username@ipaddress

  
 #### scp –pr /home/bob/media/ devapp01:/home/bob
 - same like ssh to copy a file from system to server 
 -pr - it is ued for with permissions

## iptables
- it will help to create security in the network

### sudo apt install iptables
- to install iptables
### sudo iptables -L
- to list rules

