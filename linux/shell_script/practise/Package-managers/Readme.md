 location: /home/sri 

# package-managers
  - A pacage contains all the files that a software required to run. so to install this pacages into a system we may face dependency issues or some other errors so here comes the package manager..

 - package Manager is a software responsible for installing, configuring, updating, removing packages from os.

  - Advantages:
  package integrity and authenticity - responsible for downloading packages in secured way..
  - simplified package management - downloading, upgrading or installing software from software repository.
  - grouping packages - it will groups all the avaialable oackages
  - manage dependencies - it will manage all teh dependencies.
- [ types ](#types)
- [ working ](#working)

## types

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%204.jpg)
### .deb - Debian package manager
-> ubuntu, debian, linux Mint uses debian based package managers.

### .RPM
-> RHEL, Centos, Fedora used Rpm based package managers.

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%205.jpg)

### DPKG 
- The base package manager for debian based distributions.
### APT
- a fornt end for the dpkg found in debian.
### APT-GET
- Traditional front end for dpkg system found in debian.
### Rpm - Red Hat package manager
- The base package manager for Redhat based distributions.
ex: Centos, Fedora
### YUM 
- a fornt end for the RPM in redhat diributution.
### DNF
- a more feature-rich front-end for the RPM system.

## working
- working with pacage managers.

### RPM
#### Installation
#### rpm -ivh telnet.rpm
- i stands for installation
- v verbose used for printing detailed output of command
#### uninstalling
#### rpm -e telnet.rpm
- To unistall a pacage
#### upgrade
#### rpm -Uvh telenet.rpm
- To upgrade to the next versions.

- All the data is stored in /war/lib/rom directory..
-It is used to query what packages,versions etc..
#### Query
#### rpm -q telnet.rpm
- To query the db and get details about installed package.

#### rpm -vf <path to file>
- TO verify the package is like veryfying files installing from the trusted  source..


### Rpm doesn't resolve it's issues by it's own that's why we are using higher level pacckage manager called YUM.

### YUM - Yellowdog Updater, Modified.
- free and open source works on RPM based linux systems.
- it works with software repos which is the collection of packages..
- heigh level manager but depends on RPM.
- repository info stored in /etc/yum.repos.d
- Automatic dependency resolution..


#### yum-working
 - /etc/yum.repos.d -> software repository for yum folder.
#### Sequence of steps for installing the package..
#### yum install httpd
- Installing httpd
#### yum remove httpd
- To remove a package.
#### yum update httpd
-  To update a package
#### yum update
- To upodate all teh packages
#### yum reposlist
- It will show repos added to your system..

### yum provides scp
- it will tell which package to install for a specific command to run..
- here we are checking for package which provides scp.


### DPKG-working
#### dpkg -i telenet.deb
- To install the packages
#### dpkg -r telnet.deb
- To uninstall a package
#### dpkg -l telnety
- TO list teh packages
#### dpkg -s  telnet
- To chech status of package
#### dpkg -p <path to file>
- To verify..
#### APT(advanced package manager) /APT-GET-working

#### apt edit-sources
- it will open below file
- /etc/apt/sources.list --> software repository for apt get

#### apt update
- To refresh repos and download package info from all sources
#### apt upgrade
- Used to install upgrades of all repos.. 

#### apt install gimp
-  To install packages.
#### apt remove telnet
- TO remove pkg..
#### apt search telnet
- TO search
#### apt list | grep telnet
- To list packages

#### apt-get install gimp 
- To search

#### APT and APT-Get comparison
- when we compared both APT and APT-GET. APT is more user friendly and we can get better results and better search options in APT.  


