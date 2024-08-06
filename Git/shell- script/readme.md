# Shell Scripts
[ Intro ](intro)
[ variables ](varibales)
[ arithmetic operations ](arithmetic-operations)
[conditional logic](conditional-logic)

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
