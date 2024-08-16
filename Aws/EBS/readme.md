# EBS(Elastic Block Storage)

## list-of-topics
[ Intro ](Intro)
[ Types ](Types)
[ creation and working of ebs with instance](creation-and-working-of-ebs-with-instance)


## Intro
-  It breaks the data into separate blocks and stores these blocks in seperate pieces each with seperate identifier and these blocks stored in number of physical devices.
- a collection of these blocks is pressented to your os as volume or hardrive. Then we can create a filesystem on top of it. 
- It is mountable and bootable.
- we can attach and detach a block storage from an EC2 instance and the data is stored in this so we can move data easily by moving this block storage.
- we can able to connect a ec2 instance and a ebs volume which are present in same availability zone different here we are not able connect them if they are in diffremt availble zones.
- we can do this by taking snapshot and using it we can create another EBS volume in different availability zones and regions and these snapshots are stored by using voulumees..

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2027.jpg)


## Types
- general purpose SSD GP2/Gp3
- Provisioned IOPS SSD voulmes
- Throughput Optimized HDD voulmes.
- Cold HDD volumes..
- magnetic volumes.

### general purpose SSD(solis strate drive) GP2/Gp3
- it will be suitable for most of the diffretent workloads.
-  ex: virtaul desktops, db, applications, dev, test loads.
aws uses two types of voulems
 gp3 - latest and low cost
 gp2 - default for EBS.

 ### Provisioned IOPS SSD voulmes
 - heighest perfoirmance EBS storage volumes
 - throughput-intensive workloads with low latency
 versions
 - Provisioned IOPS SSD(io2) voulmes
 - Provisioned IOPS SSD(io2) block express voulmes
 - - Provisioned IOPS SSD(io1) voulmes

 ### Throughput Optimized HDD(Hard disk drive) voulmes.
 - Throughput Optimized HDD - low cost for through put intensive workloads

 -  cold HDD - low cost hdd for less frequently accessed hdd.

 ### magnetic volumes
 - previos generations volumes
 

 ### creation and working of ebs with instance
- create ec2 instances in same availability zone, different availability zone and different region.
- create a EBS volume 
- Attach the voulume to one the instance.
- lsblk - to list the block devices 
  by usimg this we can verify whethere our block storage is created or not..
- sudo file -s /dev/xvdb (xvdb ebs storage partition  namethis we get after running lsblk) - to check whether there is a file system or not.
-  sudo mkfs -t xfs /dev/xvdb - to creat a file system on the storage.
- now we need to mount the file system to a directory in root
- cd / (to move to root dir) and mkdir directory_name - 
- sudo mount /dev/xvdb directory_name - mounting file system to the directory which we created now
- df -k -> to view the list of mounted files  
- now we need  to get a unique identifier for the ebs voulume

- sudo blkid - to get unique id
- copy and paste this id in /etc/fstab by using this command sudo vi /etc/fstab
- paste this and save UUID=7e9bbb1b-2984-41e9-b809-9cd7d4f55538 /ebsdemo xfs defaults,nofail
-  sudo mount -a to update it when we did first time
- move to the directory where we mounted our file  and create a text file  with a text...

- so as of now we attached a ebs voulume to ec2 instance and created a file system to that voulme and mounted to a directory in the root folder and updated text data in it.
 - next steps below..

 #### Steps for attaching EBs to new instance:
 - unmount the file system
 - sudo umount /directory_name again verify with df -k
 - now detach the volume and attach to different server verify by using 
 lsblk
 - check the file system it will be available automatically
 sudo file -s /dev/xvdb
 - create a dir  mkdir dir_name and move to direcory
- you can see the previous text file with same data...










