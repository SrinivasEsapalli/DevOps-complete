# Shell Scripts
[ Intro ](intro)
[ variables ](varibales)
[ arithmetic operations ](arithmetic-operations)
[conditional logic ](conditional-logic)
[ for each loop ](for-each-loop)
[ while loop ](while-loop)
[  case statement ](case-statement)
[ Shebang ](shebang)
[ Exit codes ](Exit-codes)
[ Functions ](Functions)
[ shellcheck ](shellcheck)

## Intro
## Why
- to automate daily backups
- to automate installation and patchinf of software on multiple servers
- raise alaram and send notifications.
-  trouble shooting and audits..
## crteatin a new directory and running
Ex:  list of tasks to be completed to launch a rocket

rocket-add mars-mission

rocket-start-power mars-mission

rocket-internal-power mars-mission

rocket-start-sequence mars-mission

rocket-start-engine mars-mission

rocket-lift-off mars-mission

rocket-status mars-mission


--> now we will automate this task by creating ashell script.

---> create a file automation-task.sh and past it all the commands here
---->bash automation-task.sh
 - all the above commands will be run here with a single file.. 

 ## varibales
 - it can avoid the repatation and we change at one place all the script values are automatically changed.
 ex: variable_name=value
  - we can use them to display out as well
   variable_name=$(task_command)
 ### Rules:
  - these are case sensitive
  - no other symbols are allowed we can use alphanumeric or undersores.
### command-line variables
- these are the variables we can use from the command-line
i,e..no need to change the varible name in the script.
Ex: automation-task-name command-line-variable_name
          $0                          $1
    --> here we can use $1 in place of the variable name


![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%2014.jpg)

### read statement

read -p "Enter name of mission:"  mission_name
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%2015.jpg)

### arithmetic operations

- We can use expr to do this
Ex: expr 6 + 3 and expr 6 \* 3
here we are using \* for multiplication because * means evrything.
- we can use varibles
ex: A = 6, B = 7
expr $A + $B
- double parentheses
ex: echo $(( A + B ))
by usingh paremthesis no need to use \ . exho $(( A + B ))

- to support decimal val we need to use bc -l
ex:  echo $A / $B | bc -l
3.333333

### conditional logic
if << $rocket_status = "failed">>
then
    rchp" THe mission is failed"
fi
elif [ $rocket_status = "success" ]
then
echo "This is successful"
echo "launching success failed
else
echo "The state is not failed or succes
fi

#### conditional operator for comparison-statement

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%2016.jpg)


#### with double parenthesis
- we use this in different cases

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%2017.jpg)

#### && and ||
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%2018.jpg)

##### with  files
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%2019.jpg)

#### for each loop
for variable_name in <list of missions>
do
task-to-be-done
done
- we can run any number of loops by using this loop..
--> or we can use file-name to read the data from it
for variable_name in $(cat file-name)
do
task-to-be-done
done

---> or we can use a variable to increment it
for (( variable_nam =0; variable_nam <= 100; variable_nam++ ))
do 
task-to-be-done
done

----> or with numbers in particular range
for variable_name in {0-100}
do
task-to-be-done
done

### while loop
-Execute a command or a set of commands multiple times but you are not
sure how many times.
• Execute a command or a set of commands until a specific condition occurs
• Create infinite loops
• Menu driven programs
#### syntax:
while [ conditions ]
do
statements-to-be executed
done

### case statement


case << value >> in
esac
stmt1
;;
stmt2
;;
stmt3
;;
stmt4
;;

### shebang - #!bin/bash
- we use shebang to differentiate bash(bourne again) from other shell like bourne shell etc..
- few features are supported in bash and not supported in other-versions...

### Exit codes
- for every command we execute it will retuern an a exit code..
- for success the exit code will be 0
- in all the other cases it is > 0.
- after running any command use echo $ to get the exit code 
- we can modify the exit code by giving exit code_number

### Functions
- it will be helpful to remove the code duplicates and help to run the functionality as many times as required..
#### Syntax
- function function-name() {
// functiona defination
}
function call
// help to call the function as requires..

-  Always keeps function defination on top then function call
- for functions if we use the exit code it will stop executing so here we can give the exit code by using return. ex: return 1.
#### When to use functions.
-  Break up large script that performs many different tasks:
- Installing packages
- Adding users
- Configuring firewalls
- Perform Mathematical calculations

--> ex:
// function defination with command line arguments 
function add(){
echo $(( $1 + $2 ))

}
// command line arguments
sum=$(add 3 5 )

----> ex: by using retun 
function add(){
return $(( $1 + $2 ))
}
add 3 5
sum=$?
// we cannont use this type of return in c language etc..
// we can retun only numbers not return the text.
// we cannot retrieve the value by assigning the value to a varible ex: sum=$(add 3 5)

#### shellcheck
- it will help to improve in the shell script or it will help to find the errors in the script..

ex: apt-get install shellcheck
yum install shellcheck
shellcheck file-name.sh