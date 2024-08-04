

# Strage
- [ block storage ](#block-storage)
- [ FileSystem ](#FileSystem)
- [ External Storages ](#External-Storages)

## block storage
- found in /dev folder
- used to store data ex: harddisk,ssd etc
### lsblk
- to see list of block storages in system.
 ### ls -l /dev/ | grep "^b"
 - same like above with common letter b
### sudo fdisk -l /dev/partition_name
- to view data of partition

## gpt partition
- can have as many as partitions.
### Creatin a GPT partition called vdb1 of size 500M on the disk /dev/vdb

## FileSystems
- to write a disk or partition we must create a filesystem.
- it defines how data is stored on a disk we should mount to directory then we can read or write data to it..

### mkfs.ext4 /directory_path(ex: /dev/vda1)
- creating a ext4 filesystem
### mkdir /mnt/ext4;
###### Mounting #########
- it is a process where files and directories are available for specific path..
### mount /dev/vda1 /mnt/ext4
- to mount the file system

### mount | grep /directory_path(ex: /dev/vda1)







## ExExternal Storages
- 3 types

### DAS - Direct attached stporage
- it is directly attached to host system
- efficient but suitable fo ronly small business

## Nas - Network attached storage
- it is suitable when centralized storage is accessed by mutliple nework
- host and the storage is connected by a network.
- used for webservers or application servers..

## SAN - storage area network
- it can host machine critical app and db.
ex: oracle db and microsoft sql db

## LVM - logical volume groups 
- it is the group of 2 or 3 physical storage units like hard disk, partitions etc..

### apt-get install lvm2
- need to identify the unused partition and we should create the volume
### pvcreate /dev/unused-partion-path
- to create a voulme
### vgcreate voume-group-name /dev/sdb
- to create a voulume group
### pvdisplay
- to display the available physical voulmes
###  lvcreate –L 1G –n name_of-Lvm voume-group-name 
-  to create a logical voulme
### lvs
 - to list the volumes
### mkfs.ext4 /dev/volume-group-name/logical-voulume group 
- to create file system in volume group

### mount -t ext4 /dev/volume-group-name//.logical-voulume group /mnt/vol1
- to mount a voulume..
### vgs 
- to list the volumes on vg

###  lvcreate –L +1G –n dev/volume-group-name/name_of-Lvm voume-group-name 
- to increase the size of the voulume group
### df -hp /mnt/vol1
- to check the logical voulume size
### resize2fs /dev/volume-group-name/vol1
- to resize the file system according to the volume size..
i,e like we resized lvm size..










