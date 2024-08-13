# basic_Programs
Task-1: sub

Print the difference of two numbers using pre-defined variables where 

a=9
b=4

Sample Output:
Difference: 5


# values of a and b
a=9
b=4
#substracting storing them in sub
sub=$(($a-$b))
#printing sub
echo "sub: $sub"

exe: ./sub.sh   o/p: 5

===============================

Task-2 add1

Print the sum of any two numbers 'a' and 'b' (User Input Values - Run Time Variables).

Sample Output:
Enter a value: 7
Enter b value: 5
Sum: 12


# text to eneter value of a
echo " enter the value of a"

#declaring variable a
read a

#text to enter value of b
echo " enter the value of b"

#declaring variable b
read b

#sum of  a and b n storing in sum
sum=$(($a+$b))

#printing sum
echo "sum: $sum"



==============================

Task-3 add2

Print the sum of any two numbers 'a' and 'b' (Using command line arguments).

Sample Output:
./script_name.sh a b
Sum: a+b


#echo "file name :$0"
#for value a and b
echo "value a :$1"
echo "value b :$2"

#sum of the values
sum=$(($1+$2))

#printing sum
echo "sum: $sum"

![screenshot](https://github.com/SrinivasEsapalli/linux/blob/master/shell_script/practise/Screenshorts/screen%201.jpg)


=============================

Task-4 c_name

Print a greeting message for a person using command line arguments

Sample Output:
./scriptname.sh some_name
Welcome some_name!!!!

########### For inserting the name using command line
echo "welcome $1!!!!"

![screenshot](https://github.com/SrinivasEsapalli/linux/blob/master/shell_script/practise/Screenshorts/Screen%202.jpg)













