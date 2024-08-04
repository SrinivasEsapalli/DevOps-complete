
# cron Jobs



##  uptime >> /tmp/system-report.txt
- To run a uptime  at everyday 8:00PM and store it in /tmp/system-report.txt 
step -1: crontab -e
step -2: add this config at bottom
0 20 * * * uptime >> /tmp/system-report.txt
time hours date month day-of-week command


### Cron job fields to automate a process
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%2012.jpg)

### crontab -l
- to list all jobs schedules in cron
### cat /tmp/system-report.txt
- to check file data
### tail /var/log/syslog
- to check the logs



