# linux :
## Shell -scripting:
- Shell helps in text based interaction  between user and the operating system.
- shell is an os between user and kernel(os)
- shell scripting mainly used for repetative work. back uping files and monitoring system resources.

## Shell:
 - it allows text based interaction between user and the interface(operating system)..
### gitbash is used to run the linxu commands on windows system..
 /home--> is the default directory, It will be used to store files and directories, like dedicated locker, other users can't access your file.
 /home/usernmae --> Is the default home directory for a user.
 Home directory is represented by '~'

 -> evry user has it's data in the home directory
 ex: sri 
 location: /home/sri 

- [ commands ](#commands)
- [ directory commands ](#directory-commands)
- [ shell types ](#shell-types)
- [ environment varibles ](#environment-varibles)
- [ linux Kernel](#linux-Kernel)



## commands
 ### echo " data"
 - It is used to print the text of line of code..
### command types:
#### Built-in commands
echo,pwd,set,cd, mkdir etc..
There are 30 such commands.
### External commands
mv, date, uptime etc..
scripts located in distinct filee.
### type command_name
- It will gives us whether the command is built in or user defined..==
 ### ~
 home directory is represented by using tilda(~) sign
### uptime
- shows howlong system running from reboot/restart.
### "echo -n hello"
Here..
echo - Is the command
-n - is the option
hello - is the argument.
### PWD 
Will print the present working directory.
### whatis Command
- helps to give the description of the command and uses.
- It gives one line description about it.
### man Command
- helps to give the description of the command and uses.
- It gives clear description about it with example.

### command -help or command --help
- Gives the details about the command on how to use it etc..

### apropos modpr
- It will givees the list of commands which are available with that keyword.
### echo $HOME
To check the home directory of a user.






 ## directory commands

### mkdir directory_name or mkdir d1_name d2_name d3_name
- mkdir - make directory, is used to create a directory
### cd directory_name
- To go inside a folder
### mkdir directory_name/child_directory_name
- To create a directory inside another without going inside or without using cd
### mkdir -p directory_name/child_directory_name
- It will create both paret and child directories..
### cd directory_name
- To move to particular directory.
- This is called relative path
### cd ..
- TO come out of directory 
- There are two more ways
### cd 
- To move to home directory

### sudo - super user do
As a Linux system administrator or power user

### cd "complete_path" or cd /complete_path
- we can by giving complete path
- This is also called as Aboslute path

### Cd /folder name
- To move to any particular folder
### mv source_directory_path destination_path
- To move a directory from one location tp other
- absolute path
### mv /source_directory_path destination_path/
- using relative path
### mv source_directory_path same_path_with-directory-name
- Used to rename the directory path
### cp source_directory_path-withfilename destination_path
- TO copy a file 
### cp source_directory_path-withfilename destination_path
- TO copy a file with recursive operation
### rm directory_path
- To delete a file
### rmdir directory_path
- To delete a directory
### cat file-name or file_path
- TO dispaly content of the file
### cat > file-name or file_path
- TO override content of the file
### touch fileneme.txt
- To create a empty file
### more filename_txt
- To scroll the data in a text file
### ls -l  
Ls stands for List storage.

- list files with permissions
### ls -a
- shows the hidden files
### ls -lt
- To display files from recent modified to old
### ls -ltr
- It prints in reverse order old modified to recent modified
### whatis command_name or man date or command_name --help or apropos command_name
- It will display the use of command


## shell types
Bourne shell(sh)
c Shell(csh or tcsh)
Korn Shell(Ksh)
Z Shell(zsh)
Bourne again Shell(bash)

### echo $SHELL
- To check which type of shell available in the system..
### sudo chsh -s /bin/sh user_name
- here we used Bourne shell
### bash-features
### bashauto-completion
- Helps to fill the command/file_name completely if we hit the tab after enternig the begining of the file.
### alias k=kubectl
- It supports Aliases so that we can use shortcut insted of full name
### alias up=uptime
echo 'alias up=uptime' >> ~Use_name/.profile
- To make an alias name and to make it permanent
### echo date
- To print the current date.

### environment varibles
- It will store information about user login session..
### env
- It will print out all the environment varibales..
### export varible_name=value
- It will create an environment varible..
For example, to add a variable using the command line:

echo 'export example_name="example_value"' >> ~/.profile

This command appends the export statement to the end of the ~/.profile file, making the variable MY_VARIABLE persistent across sessions.

To add an alias, like ll for ls -l, use:

echo 'alias ll="ls -l"' >> ~/.profile
### varible_name=value
- It will create an env variabele tempararly.
### ~/.profule or ~/.pom_environment
- To set up the env variable permanently..


### path varible
- when a user issues external command toshell shell uses path variable to search the commands.
- Specifying a set of directories where executable programs are located.
### echo $PATH
- TO check the available path
### export PATH=$PATH:/opt/path_varibale/bin
- To set up new path varible
### which path_varible
- TO check whether the path variable  is available or not
### Bash Prompt [~]$
- ~ = present working directory
- $ = user prompt sysmbol ..which user is loged in.
### PS1 - Prompt String 1
- used to customize the appearance of the prompt.
-like Example inplace of $ in the terminal we can print what ever we like.

 ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2079.jpg)

### PS1="[\d \t \u@\h:\w ] $"
[Wed Jul 31 18:36:33 srini@Srinivas:~ ] $
### Bash Prompt
@h: Iw. ] $ "
eston:~ 1 $
Id: the date in "Weekday Month Date" format (e.g., "Tue May 26" le: an ASCIl escape character (033)
Ih : the hostname HODN \H: the complete hostname
In : newline
\r: carriage return
\s: the name of the shell
It : the current time in 24-hour HH:MM:SS format
\T: the current time in 12-hour HH:MM:SS format \@: the current time in 12-hour am/pm format
\A: the current time in 24-hour HH:MM format lu : the username of the current user
Iw: the current working directory, with $HOME abbreviated with a tilde IW: the basename of the current working directory, with $HOME abbreviated with a rilde
1$: If the effective UID is 0, a H, otherwise a $

### PS1="[\d] \u@\h:\w  $"  >> ~Use_name/.profile
[Wed Jul 31 18:36:33 srini@Srinivas:~ ] $



## linux Kernel
it act as the interftace between applications/processes and memory,cpu and hardware devices. Kernel is responsible 4 major tasks
### memory management 
- it keeps track of memory where and when to store..
 two types of memory
  kernel memory - only access to kernel has data like kernel code etc..
  user space - it will store application or programs

### process management
- which process can  use CPU when and how liong
### Device Drivers
act as a software between processes and software
### System calls and security
receives requests from services for processes

### Monolithic
- It's get's cpu utilization and memory management by it self..
 ### Modular
 - it can extend it's capabilities through use of dynamically loaded kernel modules.

 ### Kernel versions
 - uname - to get the name of kernel
 - uname -r to get the version of the kernel.
 ### $udevadm monitor
 - it prints newly attached removed device data..

### hardware detailing commands
 ### lspci
 displays data about newly connected devices

 ### lsblk
 - displays date of storage devices

 ### lscpu
 - To display architecture about cpu ex: cores, threads,models etc..

 ### lsmem
 - TO print all the available memory in the system
 ### free -m 
 - To print used and avaiable memory

### lshw
 - Detialed info about entire hardware details








































## writing the code 
### "nano" editor
-we can edit in nano script
-nano scriptname.sh
-ctrl+0 and enter & ctrl + o -> to save the file

### vim or vi" editor

vi scriptname.sh
-write the script
esc
:wq! save
   - w-  write n save the script
   - q- quit
   - ! - force operation(do this with cautin)
### we can use in IDE

## Executing the scripts
### using the path
./scriptname.sh
- . is for current directory
### using absolute path
 - /path/to/scriptname.sh
### using sh
  sh scriptname.sh
### using bash
bash scriptname.sh



-kernel -> an operating system.
- #!/bin/bash (shebang) --> tells the operating system which interpreter to use when executing the script.





