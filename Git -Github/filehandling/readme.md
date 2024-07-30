FileHandling Using Linux:
 - [ Users ](#users)
 - [ Groups ](#groups)
 - [ Members](#members)

 
File Management commands:
 -- [ File Managment ](#file_management)



## first login to server in digital ocean

## users

### cd/home
to check the available users or owners

# File Permissions
![screenshot](https://github.com/SrinivasEsapalli/Git/blob/main/filehandling/screenshots/FP.jpg.png)
![screenshot](https://github.com/SrinivasEsapalli/Git/blob/main/filehandling/screenshots/File_permissions.jpeg)


## Adding users(user is also called as owmer) 
- we can add or remove permissins for particular file.

### useradd -m username
To add users/owners in particularly home directory of server.

### useradd username
adds the users in dorectory.

### ls -l 
lists the list of file and directories with user permissions.

### chown new_owner_name file_name
-To change the owner(chown) of a file.

## Groups

## creating Groups
- we can also create groups 

## members
### groupadd group_name
- creating a group 
### chown :group_name file_name
- it will change the group name of a file

## members
### members group_name 
- To show members in a group.
### sudo apt-get install members
- To install members pacakge in ubuntu server.
### usermod -a -G group_name member_name
to add a user to the 
-a giving all permissions
-G group


## delete
### userdel user_name


## file management
### ls
- list all the  files
### cd
cd(chsnge directory) helps to change directory
### Pwd
-it gives present working directory(pwd).
### mkdir
-mkdir(make directory) helps to create new directory.
### rmdir
-rmdir(remove directory) 
### touch
ceates,changes a files & modifies timestamp of a file.
### cat 
-helps to display content of a file
- cat >> file_name to add content to a file
### chmod
- It will change the mode of permissions
-chmod 777 file_name(see the above image )
### cp file_name ./destinationfolder/
it will copy the file and send it to destionation.
### mv file_name ./destinationfolder/
it will move the file and send it to destionation.
### locate file_name
gives the location of file
### locate "*.txt" -n 20
gives last 20 files with .txt extension
### find ./directory_name/ -name filename.txt
it will search for the file in the directory n gives the required file.

### vi filename
to add data into any file
### cat colors | grep word_name
grep is used for searching and matching the text













