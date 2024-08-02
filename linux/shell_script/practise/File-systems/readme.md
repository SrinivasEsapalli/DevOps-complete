# Files

- [ FileSystem Hierachy ](#FileSystem-Hierachy)
-[ File size ](#File-size)
-[ GREP ](#GREP)
-[ File permissions ](#File-permissions)


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

![screenshot](https://github.com/SrinivasEsapalli/linux/blob/master/shell_script/practise/Screenshorts/screen%301.jpg)

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

### du -sk file_name 
- shows the size of a file in byete 
### du -sh file_name
- shows the size of a file in human readable form..
### ls -lh file_name
- to show with permissions.

### Archiving Files:

#### tar -cf files
- -c is used to create an archieve.
- f name of tar file to be created
#### tar -tf file_name
- To see the contents of file
#### tar –xf test.tar

#### tar -zcf
- To comprise the size of the tar file.

### file compressiong commands
#### bzip2,gzip,xz are file compressors
ex: bzip2 test.img
##### bunzip2, gunzip, unxz To unzip the files
ex: gunzip test1.img.gz


### searching for files
#### locate file_name 
- it will searches for file

### find /directory -name name_of-file-to-search


### GREP
- here we are using for searching
#### grep serch-by-word file_name
- To search for this word in file
#### grep -i serch-by-word file_name
- To search for this word in file without case sensitive.
#### grep -v serch-by-word file_name
- To print for lines without this word in file
#### grep -w exam file_name
- help to search exact word
ex: exam,example,examples
o/p: exam
#### grep -vw serch-by-word file_name
- help to search opposite to exact word
#### grep -A1 serch-by-word file_name
- to print the matching words and below
#### grep -B1 serch-by-word file_name
- to print the matching words and above
#### grep -A1 -B1 serch-by-word file_name
- to print the matching words and above



### > to override a file content with new content
cat hi  > demo.txt
o/p: hi

### >> to append
cat hello > demo.txt
hi
hello

### less
- it is a terminal pager program used to view the contents of a text file one screen at a time

### standard out put of a file standard input to a file

#### grep hello sample.txt | less 
- here output of sample file will be inputy to less
### tee command
####  echo $SHELL | tee shell.txt
/usr/bin/bash
it also same output of $SHELL is input to shell.txt

## File permissions


![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%207.jpg)
 
