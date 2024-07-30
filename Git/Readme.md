# Git
- git helps to move to any version of software ..older and new versions are saved  so it is called version control

- [ list commands ](#list-commands)
- [ Editor ](#vi-editor)
- [ New Directory ](#new-directory)
- [ General commands](#general-cmd)
- [Git branches](#branches)



## list commands

## ls
gives the list of files at the particular directory

## ls -lrt
 prints the files and directories in the reverse order
 
## ls -lt
 prints the files and directories with time.
 
## ls -l
to list all the files with their permissions
## ls -a
list all the hidden files


## cd ..
to come out from the particular directory

## cd ../ ..
helps to come out  from two directories

<a name="Vi Editor"></a>
### Vi Editor

## vi filename
- to edit file inside gitash using vi editor
- to save files in vi editor -> :wq 





## new-directory

##  mkdir folder name
To create a directory(folder) using cmd/git bash
## touch filename
to create the files
-create a folder and initialize the files then
### git init
 - to make a directory as a repo using git bash
### git switch -c main 
- to change to a particular branch
### git remote -v 
- it will show the linked remote repos.

### git remote add origin REMOTE-URL 
- links to the GitHub

### Remote-URL
need to create a new repository in github and copy paste it here.. 

### git push origin main
- pushes to the main origin
- if we create the repository in GitHub it will create the origin branch

### if we create the directory using local git after init it will create a master branch
### git push origin master
To commit to the master branch


## general cmd


## cd "directory name or file path" (in double quotes)
to move into a particular directory
## touch filename Ex: touch Readme.md
it will create the readme file

## echo " content"

## echo " contennt"
to add the content into the file
## git add Readmee.md(filename)
saves the particular file in the staging area
## git add .
it saves all the available files in the staging area.

## git rm file name
to remove a file 

## git rm -r directoryname
to remove a directory 

## git commit -m " commit message ex: files is createed or updated"

it will saves the files in the local repo

## git push origin main 

it will saves the files in remote repo i.e in github official account. 
Here main is the branch name we can mention the branh name to which we are plamnning to commit

## git diff

it will show the changes in the files from previous commit to this commit.

## git pwd
it will gives the present working directory

## git clone 
https://github.com/SrinivasEsapalli/Git.git

## git log
it gives all the recent commits

## git branch 
to check the current working branch

### code .
opens visual studio for the repository.

### git commit --ammend

helps to undo the committed message.
i.e helps to undoing the last commit and we can make it in a single commit.

### .gitignore
 -> helps to avoid commiting of some untracked files.
Ex: passwords etc..

### git diff 
- it will shoiw all the changes in the commit.
### note: add and commit every changes atleast in local repo to see the difference n other flow.git

## branches

### git branch branch_mame
To create a new branch

### git branch
To see all the available branches

### git switch branch_name
To switch between branches

### git switch -c branch_name
it wil create and switches to the new branch.

### git merge coding
it will branch both branches
- got to the detination branch
- hit the merge command

#### merge conflicts
- if same file has different code in the destinaton branch it will raise conflict.
- we can fix it by merging or accepting both changes in the code.
