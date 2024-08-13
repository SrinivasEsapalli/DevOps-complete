

# SystemD
- It is a software suite that provides an array of system components for Linux operating systems. The main aim is to unify service configuration and behavior across Linux distributions. Its primary component is a "system and service manager.
- helps to run system
- [ SystemD Tools ](#SystemD-Tools)

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%2013.jpg)


## SystemD Tools

### Systemctl 
- used to manage services on system d managed server 
manages services like START/STOP/RESTART/RELOAD etc..



#### systemctl start docker
- to strt a service
#### systemctl stop docker
- to stop a service
#### $ systemctl restart docker
- to restart a service
 #### systemctl reload docker
- to reload
#### systemctl status docker
- to check status
 #### systemctl enable docker
 - to enable a serive
 #### systemctl daemon-reload
- reloads sys manager configuration

### JOURNALCTL
- can query the contents pf systemd logging system called journal..ex: service failures.

#### JOURNALCTL
- will gives all log entrys
#### JOURNALCTL -b
- to see logs in current boot
#### journalctl -u UNIT
- to see log for specific unit