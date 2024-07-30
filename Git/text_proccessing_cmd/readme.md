## Text processing:

- [ grep](#grep)
- [sed](#sed)
- [sort](#sort)
-[awk](#awk)

### grep 
seraches for string in group of files.

## Sed
## Sed 's/to-be-replaced/new-word' filename
-s is used for the substitute
- we use -e also which expression
- it is used for searching, inserting etc..
### sed 's/*//' /etc/passwd
prints all the content
- ex: 
-root:x:0:0:root:/root:/bin/bash
-bin:x:1:1:bin:/bin:/sbin/nologin
-daemon:x:2:2:daemon:/sbin:/sbin/nologin
### sed 's/:.*//' /etc/passwd
- prints the content till :
ex:
-root
-bin
-daemon
- same command in other way
###  sed 's/\([^:]*\).*/\1/' /etc/passwd
- prints the content till :
o/p :
-root
-bin
-daemon

-here we are dividing and storing two diffenet groups
sed 's/\    ([^:]*\)    \   (.*\)   /\2/' /etc/passwd
            group1          group2
-group1: stores till the : from whole output
-group2: stores rest starting from :

###  sed 's/\([^:]*\).*/\1/' /etc/passwd
- prints the content till :
ex o/p: 
-root
-bin
-daemon

###  sed 's/\([^:]*\)\(.*\)/\2/' /etc/passwd
- prints rest of the content.
o/p:
-:x:0:0:root:/root:/bin/bash
-:x:1:1:bin:/bin:/sbin/nologin
-:x:2:2:daemon:/sbin:/sbin/nologin


### sed '/enetr text where we need to insert/i----' file_name
-helps to insert the text
![screenshot](https://github.com/SrinivasEsapalli/Git/blob/main/text_proccessing_cmd/screenshot/sed_insertion.jpg)

### sed 'G' test1.text
- prints space between text
![screenshot](https://github.com/SrinivasEsapalli/Git/blob/main/text_proccessing_cmd/screenshot/extra_space.jpg)

### sort
### sort file_name
- It will sort the file in alphabetical order.

### sort -r file_name
- It will sort the file in reverse alphabetical order.
### sort -k2 test1.text
- It will sorts second word in the order
### command(ex:sort -k2 test1.text) > file_name2
-here it will stores the output in the file_name2
### uniq test1.text
-it will gives uniq values and considers space is also a charecter.
### cut  -b 1,2,3 color.txt  
-cuts and gives the texts
// we can cut the data according to requirement using different flags.


### head colors.txt  
-prints starting text
### tail colors.txt 
-prints ending texts
### 
- for printig middle text
### more colors.txt
-  When the output is large, we can use more command to see output one by one.
### less colors.txt
- The less command doesn’t load the entire file but loads it part by part which makes it faster. 

### wc colors.txt 
-gives word count like lines,word count,charecter count
### man or command -h
-> use these commands to check manual for any particluatr command.


### awk






