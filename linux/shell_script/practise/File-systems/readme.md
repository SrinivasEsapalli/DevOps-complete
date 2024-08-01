# Files

- [ FileSystem Hierachy ](#FileSystem-Hierachy)
-[ F size](#File-size)


 ## file directory_name or file file_name
 - Displays type of a file.

 File Type      Identifier
DIRECTORY           d
REGULAR FILE        -

CHARACTER DEVICE   C
Link               |
SOCKET FILE        S
PIPE               p

BLOCK DEVICE       b

## FileSystem Hierachy

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%203.jpg)

### /Root
- To store the root user data
### /home
- TO store the user details
### /etc
- Is used to store most of the configuartion files.
### /opt
- To store the programs or application data
### /media
- All exterall media files are stored here
### /bin
- The basic commands mv,mkdir,cp etc are stored Here
### /mnt
- Is used to mount file system temporarly
### /tmp 
- Is used to store the files temporarly
### /lib
shared lib are available here
### /usr
- In older system it is used for user directory
- now all user lined apps and data are resigned..
Ex: vi text editor, mozila fir fox
### /var
- All the logs are stored here..
### /dev
- Is used to store files related to the block devices that can be seen when running the lsblk command
### df -hp
- Disk file system
- Displays all the details about all the mounted file system 

### sudo ls -l /sbin/init
- To find init process of system

### sudo systemctl get-default
- command for default  systemd target set in this system.

## File-size

### du -sk 

