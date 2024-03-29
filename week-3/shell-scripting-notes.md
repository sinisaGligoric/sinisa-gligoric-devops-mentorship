# week-3-shell-scripting
## Scripts and screenshots below are captured during writing and executing scripts from the book `Linux Command Line and Shell Scripting Bible, 3rd Edition` - `Chapter 13`, `Chapter 14`, `Chapter 15` and `Chapter 16`.
----------------------------------------------------------------------------------

# table-of-contents
## 1. [Chapter 13](#chapter-13)
## 2. [Chapter 14](#chapter-14)
## 3. [Chapter 15](#chapter-15)
## 4. [Chapter 16](#chapter-16)

----------------------------------------------------------------------------------

## Chapter 13

### `test1.sh`
```bash
#!/bin/bash
# basic for command
for test in Alabama Alaska Arizona Arkansas California Colorado
do
   echo The next state is $test
done
```
![test1.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test1.png)

### `test1b.sh`
```bash
#!/bin/bash
# testing the for variable after the looping
for test in Alabama Alaska Arizona Arkansas California Colorado
do
 echo "The next state is $test"
done
 echo "The last state we visited was $test"
test=Connecticut
 echo "Wait, now we're visiting $test"
```
![test1b.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test1b.png)

### `badtest1.sh`
```bash
#!/bin/bash
# another example of how not to use the for command
for test in I don't know if this'll work
do
  echo "word:$test"
done
```
![badtest1.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/badtest1.png)


### `test2.sh`
```bash
#!/bin/bash
# another example of how not to use the for command
for test in I don\'t know if "this'll" work
do
  echo "word:$test"
done
```
![test2.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test2.png)

### `badtest2.sh`
```bash
#!/bin/bash
# another example of how not to use the for command
for test in Nevada New Hampshire New Mexico New York North Carolina
do
  echo "Now going to $test"
done
```
![badtest2.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/badtest2.png)

### `test3.sh`
```bash
#!/bin/bash
# an example of how to properly define values
for test in Nevada "New Hampshire" "New Mexico" "New York"
do
  echo "Now going to $test"
done
```
![test3.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test3.png)

### `test4.sh`
```bash
#!/bin/bash
# using a variable to hold the list
list="Alabama Alaska Arizona Arkansas Colorado"
list=$list" Connecticut"
for state in $list
do
  echo "Have you ever visited $state?"
done
```
![test4.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test4.png)

### `test5.sh`
```bash
#!/bin/bash
# reading values from a file
file="states"
for state in $(cat $file)
do
  echo "Visit beautiful $state"
done
```
![test5.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test5.png)

### `test5b.sh`
```bash
#!/bin/bash
# reading values from a file
# Adding IFS=$'\n' statement to your script tells the bash shell to ignore spaces and tabs in data values
file="states"
IFS=$'\n'
for state in $(cat $file)
do
  echo "Visit beautiful $state"
done
```
![test5b.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test5b.png)

### `test6.sh`
```bash
#!/bin/bash
# iterate through all the files in a directory
for file in /c/Users/Gligoric\ Sinisa/*
do
  if [ -d "$file" ]
  then
    echo "$file is a directory"
  elif [ -f "$file" ]
  then
    echo "$file is a file"
  fi
done
```
![test6.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test6.png)

### `test7.sh`
```bash
#!/bin/bash
# iterating through multiple directories
for file in /c/Users/Gligoric\ Sinisa/.s* /c/Users/Gligoric\ Sinisa/badtest
do
  if [ -d "$file" ]
  then
    echo "$file is a directory"
  elif [ -f "$file" ]
  then
    echo "$file is a file"
 else
   echo "$file doesn't exist"
 fi
done
```
![test7.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test7.png)

### `test8.sh`
```bash
#!/bin/bash
# testing the C-style for loop
for (( i=1; i <= 10; i++ ))
do
  echo "The next number is $i"
done
```
![test8.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test8.png)

### `test9.sh`
```bash
#!/bin/bash
# multiple variables
for (( a=1, b=10; a <= 10; a++, b-- ))
do
  echo "$a - $b"
done
```
![test9.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test9.png)

### `test10.sh`
```bash
#!/bin/bash
# while command test
var1=10
while [ $var1 -gt 0 ]
do
  echo $var1
  var1=$[ $var1 - 1 ]
done
```
![test10.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test10.png)

### `test11.sh`
```bash
#!/bin/bash
# testing a multicommand while loop
var1=10
while echo $var1
  [ $var1 -ge 0 ]
do
  echo "This is inside the loop"
  var1=$[ $var1 - 1 ]
done
```
![test11.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test11.png)

### `test12.sh`
```bash
#!/bin/bash
# using the until command
var1=100
until [ $var1 -eq 0 ]
do
  echo $var1
  var1=$[ $var1 - 25 ]
done
```
![test12.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test12.png)

### `test13.sh`
```bash
#!/bin/bash
# using the until command
var1=100
until echo $var1
[ $var1 -eq 0 ]
do
  echo Inside the loop: $var1
var1=$[ $var1 - 25 ]
done
```
![test13.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test13.png)

### `test14.sh`
```bash
#!/bin/bash
# nesting for loops
for (( a = 1; a <= 3; a++ ))
do
  echo "Starting loop $a:"
  for (( b = 1; b <= 3; b++ ))
  do
    echo " Inside loop: $b"
  done
done
```
![test14.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test14.png)

### `test15.sh`
```bash
#!/bin/bash
# placing a for loop inside a while loop
var1=5
while [ $var1 -ge 0 ]
do
  echo "Outer loop: $var1"
  for (( var2 = 1; $var2 < 3; var2++ ))
  do
    var3=$[ $var1 * $var2 ]
    echo " Inner loop: $var1 * $var2 = $var3"
  done
  var1=$[ $var1 - 1 ]
done
```
![test15.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test15.png)

### `test16.sh`
```bash
#!/bin/bash
# using until and while loops
var1=3
until [ $var1 -eq 0 ]
do
  echo "Outer loop: $var1"
  var2=1
  while [ $var2 -lt 5 ]
  do
    var3=$(echo "scale=4; $var1 / $var2" | bc)
    echo "Inner loop: $var1 / $var2 = $var3"
    var2=$[ $var2 + 1 ]
  done
  var1=$[ $var1 - 1 ]
done
```
![test16.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test16.png)

### `test16b.sh`
```bash
#!/bin/bash
# changing the IFS value
IFS.OLD=$IFS
IFS=$'\n'
for entry in $(cat /etc/passwd)
do
  echo "Values in $entry –"
  IFS=:
  for value in $entry
  do
    echo " $value"
  done
done
```
![test16b.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test16b.png)

### `test17.sh`
```bash
#!/bin/bash
# breaking out of a for loop
for var1 in 1 2 3 4 5 6 7 8 9 10
do
  if [ $var1 -eq 5 ]
  then
    break
  fi
  echo "Iteration number: $var1"
done
echo "The for loop is completed"
```
![test17.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test17.png)

### `test18.sh`
```bash
#!/bin/bash
# breaking out of a while loop
var1=1
while [ $var1 -lt 10 ]
do
  if [ $var1 -eq 5 ]
  then
    break
  fi
  echo "Iteration: $var1"
  var1=$[ $var1 + 1 ]
done
echo "The while loop is completed"
```
![test18.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test18.png)

### `test19.sh`
```bash
#!/bin/bash
# breaking out of an inner loop
for (( a = 1; a < 4; a++ ))
do
  echo "Outer loop: $a"
  for (( b = 1; b < 100; b++ ))
  do
    if [ $b -eq 5 ]
    then
      break
    fi
    echo " Inner loop: $b"
  done
done
```
![test19.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test19.png)

### `test20.sh`
```bash
#!/bin/bash
# breaking out of an outer loop
for (( a = 1; a < 4; a++ ))
do
  echo "Outer loop: $a"
  for (( b = 1; b < 100; b++ ))
  do
    if [ $b -gt 4 ]
    then
      break 2
    fi
    echo " Inner loop: $b"
  done
done
```
![test20.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test20.png)

### `test21.sh`
```bash
#!/bin/bash
# using the continue command
for (( var1 = 1; var1 < 15; var1++ ))
do
  if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
  then
    continue
  fi
  echo "Iteration number: $var1"
done
```
![test21.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test21.png)

### `badtest3.sh`
```bash
#!/bin/bash
# improperly using the continue command in a while loop
var1=0
while echo "while iteration: $var1"
[ $var1 -lt 15 ]
do
  if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
  then
    continue
  fi
  echo " Inside iteration number: $var1"
  var1=$[ $var1 + 1 ]
done
```
![badtest3.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/badtest3.png)

### `test22.sh`
```bash
#!/bin/bash
# continuing an outer loop
for (( a = 1; a <= 5; a++ ))
do
  echo "Iteration $a:"
  for (( b = 1; b < 3; b++ ))
  do
    if [ $a -gt 2 ] && [ $a -lt 4 ]
    then
      continue 2
    fi
    var3=$[ $a * $b ]
    echo " The result of $a * $b is $var3"
  done
done
```
![test22.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test22.png)

### `test23.sh`
```bash
!/bin/bash
# redirecting the for output to a file
for (( a = 1; a < 10; a++ ))
do
  echo "The number is $a"
done > test23.txt
echo "The command is finished."
```
![test23.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test23.png)

### `test24.sh`
```bash
#!/bin/bash
# piping a loop to another command
for state in "North Dakota" Connecticut Illinois Alabama Tennessee
do
  echo "$state is the next place to go"
done | sort
echo "This completes our travels"
```
![test24.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test24.png)

### `test25.sh`
```bash
#!/bin/bash
# finding files in the PATH
IFS=:
for folder in $PATH
do
  echo "$folder:"
  for file in $folder/*
  do
    if [ -x $file ]
    then
      echo " $file"
    fi
  done
done
```
![test25.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test25.png)

### `test26.sh`
```bash
#!/bin/bash
# process new user accounts
input="users.csv"
while IFS=',' read -r userid name
do
  echo "adding $userid"
  useradd -c "$name" -m $userid
done < "$input"
```
![test26.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test26.png)

## Summary

Looping is an integral part of programming. The bash shell provides three looping commands that you can use in your scripts.

The `for` command allows you to iterate through a list of values, either supplied within the command line, contained in a variable, or obtained by using file globbing, to extract file and directory names from a wildcard character.

The `while` command provides a method to loop based on the condition of a command, using either ordinary commands or the test command, which allows you to test conditions of variables. As long as the command (or condition) produces a zero exit status, the `while` loop continues to iterate through the specified set of commands.

The `until` command also provides a method to iterate through commands, but it bases its iterations on a command (or condition) producing a non-zero exit status. This feature allows you to set a condition that must be met before the iteration stops.

You can combine loops in shell scripts, producing multiple layers of loops. The bash shell provides the `continue` and `break` commands, which allow you to alter the flow of the normal loop process based on different values within the loop.

The bash shell also allows you to use standard command redirection and piping to alter the output of a loop. You can use redirection to redirect the output of a loop to a file or piping to redirect the output of a loop to another command. This provides a wealth of features with which you can control your shell script execution.

The next chapter discusses how to interact with your shell script user. Often, shell scripts aren’t completely self-contained. They require some sort of external data that must be supplied at the time you run them. The next chapter discusses different methods with which you can provide real-time data to your shell scripts for processing. 

------------------------------------------------------------------------------------------------------------

## Chapter 14

### `test1.sh`
```bash
#!/bin/bash
# using one command line parameter
#
factorial=1
for (( number = 1; number <= $1 ; number++ ))
do
  factorial=$[ $factorial * $number ]
done
echo The factorial of $1 is $factorial
```
![test1.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test1.png)

### `test2.sh`
```bash
#!/bin/bash
# testing two command line parameters
#
total=$[ $1 * $2 ]
echo The first parameter is $1.
echo The second parameter is $2.
echo The total value is $total.
```
![test2.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test2.png)

### `test3.sh`
```bash
#!/bin/bash
# testing string parameters
#
echo Hello $1, glad to meet you.
```
![test3.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test3.png)

### `test4.sh`
```bash
#!/bin/bash
# handling lots of parameters
#
total=$[ ${10} * ${11} ]
echo The tenth parameter is ${10}
echo The eleventh parameter is ${11}
echo The total is $total
```
![test4.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test4.png)

### `test5.sh`
```bash
#!/bin/bash
# Testing the $0 parameter
#
echo The zero parameter is set to: $0
```
![test5.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test5.png)

### `test5b.sh`
```bash
#!/bin/bash
# Using basename with the $0 parameter
#
name=$(basename $0)
echo
echo The script name is: $name
#
```
![test5b.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test5b.png)

### `test6.sh`
```bash
!/bin/bash
# Testing a Multi-function script
#
name=$(basename $0)
#
if [ $name = "addem" ]
then
  total=$[ $1 + $2 ]
  #
elif [ $name = "multem" ]
then
  total=$[ $1 * $2 ]
fi
#
echo
echo The calculated value is $total
```
![test6.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test6.png)

### `test7.sh`
```bash
#!/bin/bash
# testing parameters before use
#
if [ -n "$1" ]
then
  echo Hello $1, glad to meet you.
else
  echo "Sorry, you did not identify yourself. "
fi
```
![test7.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test7.png)

### `test8.sh`
```bash
#!/bin/bash
# getting the number of parameters
#
echo There were $# parameters supplied.
```
![test8.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test8.png)

### `test9.sh`
```bash
#!/bin/bash
# Testing parameters
#
if [ $# -ne 2 ]
then
  echo Usage ./test9.sh a b
  echo
else
  sum=$[ $1 + $2 ]
  echo 'The total sum is ' $sum
  echo
fi
```
![test9.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test9.png)

### `badtest1.sh`
```bash
#!/bin/bash
# testing grabbing last parameter
#
echo The last parameter was ${$#}
```
![badtest1.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/badtest1.png)

### `test10.sh`
```bash
#!/bin/bash
# Grabbing the last parameter
#
params=$#
echo
echo The last parameter is $params
echo The last parameter is ${!#}
echo
#
```
![test10.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test10.png)

### `test11.sh`
```bash
#!/bin/bash
# testing $* and $@
#
echo
echo "Using the \$* method: $*"
echo
echo "Using the \$@ method: $@"
```
![test11.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test11.png)

### `test12.sh`
```bash
#!/bin/bash
# testing $* and $@
#
echo
count=1
#
for param in "$*"
do
  echo "\$* Parameter #$count = $param"
  count=$[ $count + 1 ]
done
#
echo
count=1
#
for param in "$@"
do
  echo "\$@ Parameter #$count = $param"
  count=$[ $count + 1 ]
done
```
![test12.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test12.png)

### `test13.sh`
```bash
#!/bin/bash
# demonstrating the shift command
echo
count=1
while [ -n "$1" ]
do
  echo "Parameter #$count = $1"
  count=$[ $count + 1 ]
  shift
done
```
![test13.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test13.png)

### `test14.sh`
```bash
#!/bin/bash
# demonstrating a multi-position shift
#
echo
echo "The original parameters: $*"
shift 2
echo "Here's the new first parameter: $1"
```
![test14.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test14.png)

### `test15.sh`
```bash
#!/bin/bash
# extracting command line options as parameters
#
echo
while [ -n "$1" ]
do
  case "$1" in
    -a) echo "Found the -a option" ;;
    -b) echo "Found the -b option" ;;
    -c) echo "Found the -c option" ;;
    *) echo "$1 is not an option" ;;
  esac
  shift
done
```
![test15.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test15.png)

### `test16.sh`
```bash
#!/bin/bash
# extracting options and parameters
echo
while [ -n "$1" ]
do
  case "$1" in
    -a) echo "Found the -a option" ;;
    -b) echo "Found the -b option";;
    -c) echo "Found the -c option" ;;
    --) shift
    break ;;
    *) echo "$1 is not an option";;
  esac
  shift
done
#
count=1
for param in $@
do
  echo "Parameter #$count: $param"
  count=$[ $count + 1 ]
done
```
![test16.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test16.png)

### `test17.sh`
```bash
#!/bin/bash
# extracting command line options and values
echo
while [ -n "$1" ]
do
  case "$1" in
    -a) echo "Found the -a option";;
    -b) param="$2"
    echo "Found the -b option, with parameter value $param"
    shift ;;
    -c) echo "Found the -c option";;
    --) shift
    break ;;
    *) echo "$1 is not an option";;
  esac
  shift
done
#
count=1
for param in "$@"
do
  echo "Parameter #$count: $param"
  count=$[ $count + 1 ]
done
```
![test17.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test17.png)

### `test18.sh`
```bash
#!/bin/bash
# Extract command line options & values with getopt
#
set -- $(getopt -q ab:cd "$@")
#
echo
while [ -n "$1" ]
do
  case "$1" in
    -a) echo "Found the -a option" ;;
    -b) param="$2"
    echo "Found the -b option, with parameter value $param"
    shift ;;
    -c) echo "Found the -c option" ;;
    --) shift
    break ;;
    *) echo "$1 is not an option";;
  esac
  shift
done
#
count=1
for param in "$@"
do
  echo "Parameter #$count: $param"
  count=$[ $count + 1 ]
done
```
![test18.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test18.png)

### `test19.sh`
```bash
#!/bin/bash
# simple demonstration of the getopts command
#
echo
while getopts :ab:c opt
do
  case "$opt" in
    a) echo "Found the -a option" ;;
    b) echo "Found the -b option, with value $OPTARG";;
    c) echo "Found the -c option" ;;
    *) echo "Unknown option: $opt";;
  esac
done
```
![test19.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test19.png)

### `test20.sh`
```bash
#!/bin/bash
# Processing options & parameters with getopts
#
echo
while getopts :ab:cd opt
do
  case "$opt" in
    a) echo "Found the -a option" ;;
    b) echo "Found the -b option, with value $OPTARG" ;;
    c) echo "Found the -c option" ;;
    d) echo "Found the -d option" ;;
    *) echo "Unknown option: $opt" ;;
  esac
done
#
shift $[ $OPTIND - 1 ]
#
echo
count=1
for param in "$@"
do
  echo "Parameter $count: $param"
  count=$[ $count + 1 ]
done
```
![test20.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test20.png)

### `test21.sh`
```bash
#!/bin/bash
# testing the read command
#
echo -n "Enter your name: "
read name
echo "Hello $name, welcome to my program. "
#
```
![test21.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test21.png)

### `test22.sh`
```bash
#!/bin/bash
# testing the read -p option
#
read -p "Please enter your age: " age
days=$[ $age * 365 ]
echo "That makes you over $days days old! "
#
```
![test22.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test22.png)

### `test23.sh`
```bash
#!/bin/bash
# entering multiple variables
#
read -p "Enter your name: " first last
echo "Checking data for $last, $first…"
```
![test23.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test23.png)

### `test24.sh`
```bash
#!/bin/bash
# Testing the REPLY Environment variable
#
read -p "Enter your name: "
echo
echo Hello $REPLY, welcome to my program.
```
![test24.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test24.png)

### `test25.sh`
```bash
#!/bin/bash
# timing the data entry
#
if read -t 5 -p "Please enter your name: " name
then
  echo "Hello $name, welcome to my script"
else
  echo
  echo "Sorry, too slow! "
fi
```
![test25.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test25.png)

### `test26.sh`
```bash
#!/bin/bash
# getting just one character of input
#
read -n1 -p "Do you want to continue [Y/N]? " answer
case $answer in
  Y | y) echo
    echo "fine, continue on…";;
  N | n) echo
   echo OK, goodbye
   exit;;
esac
echo "This is the end of the script"
```
![test26.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test26.png)

### `test27.sh`
```bash
#!/bin/bash
# hiding input data from the monitor
#
read -s -p "Enter your password: " pass
echo
echo "Is your password really $pass? "
```
![test27.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test27.png)

### `test28.sh`
```bash
#!/bin/bash
# reading data from a file
#
count=1
cat test | while read line
do
 echo "Line $count: $line"
 count=$[ $count + 1]
done
echo "Finished processing the file"
```
![test28.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-14/output-screenshots/test28.png)

## Summary

This chapter showed three methods for retrieving data from the script user. Command line parameters allow users to enter data directly on the command line when they run the script. The script uses positional parameters to retrieve the command line parameters and assign them to variables.

The `shift` command allows you to manipulate the command line parameters by rotating them within the positional parameters. This command allows you to easily iterate through the parameters without knowing how many parameters are available.

You can use three special variables when working with command line parameters. The shell sets the `$#` variable to the number of parameters entered on the command line. The `$*` variable contains all the parameters as a single string, and the `$@` variable contains all the parameters as separate words. These variables come in handy when you’re trying to process long parameter lists.

Besides parameters, your script users can use command line options to pass information to your script. Command line options are single letters preceded by a dash. Different options can be assigned to alter the behavior of your script.

The bash shell provides three ways to handle command line options.

The first way is to handle them just like command line parameters. You can iterate through the options using the positional parameter variables, processing each option as it appears on the command line.

Another way to handle command line options is with the `getopt` command. This command converts command line options and parameters into a standard format that you can process in your script. The getopt command allows you to specify which letters it recognizes as options and which options require an additional parameter value. The getopt command processes the standard command line parameters and outputs the options and parameters in the proper order.

The final method for handling command line options is via the `getopts` command (note that it’s plural). The `getopts` command provides more advanced processing of the command line parameters. It allows for multi-value parameters, along with identifying options not defined by the script.

An interactive method to obtain data from your script users is the `read` command. The `read` command allows your scripts to query users for information and wait. The `read` command places any data entered by the script user into one or more variables, which you can use within the script.

Several options are available for the `read` command that allow you to customize the data input into your script, such as using hidden data entry, applying timed data entry, and requesting a specific number of input characters.

In the next chapter, we look further into how bash shell scripts output data. So far, you’ve seen how to display data on the monitor and redirect it to a file. Next, we explore a few other options that you have available not only to direct data to specific locations but also to direct specific types of data to specific locations. This will help make your shell scripts look professional! 

---------------------------------------------------------------------------------------------

## Chapter 15

### `test8.sh`
```bash
#!/bin/bash
# testing STDERR messages
echo "This is an error" >&2
echo "This is normal output"
```
![test8.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test8.png)

### `test9.sh`
```bash
#!/bin/bash
# testing STDERR messages
echo "This is an error" >&2
echo "This is normal output"
```
![test9.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test9.png)

### `test10.sh`
```bash
#!/bin/bash
# redirecting all output to a file
exec 1> testout
echo "This is a test of redirecting all output"
echo "from a script to another file."
echo "without having to redirect every individual line"
```
![test10.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test10.png)

### `test11.sh`
```bash
#!/bin/bash
# redirecting output to different locations
exec 2> testerror
echo "This is the start of the script"
echo "now redirecting all output to another location"
exec 1> testout
echo "This output should go to the testout file"
echo "but this should go to the testerror file" >&2
```
![test11.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test11.png)

### `test12.sh`
```bash
#!/bin/bash
# redirecting file input
exec 0< testfile
count=1
while read line
do
  echo "Line #$count: $line"
  count=$[ $count + 1 ]
done
```
![test12.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test12.png)

### `test13.sh`
```bash
#!/bin/bash
# using an alternative file descriptor
exec 3> test13out
echo "This should display on the monitor"
echo "and this should be stored in the file" >&3
echo "Then this should be back on the monitor"
```
![test13.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test13.png)

### `test14.sh`
```bash
!/bin/bash
# storing STDOUT, then coming back to it
exec 3>&1
exec 1>test14out
echo "This should store in the output file"
echo "along with this line."
exec 1>&3
echo "Now things should be back to normal"
```
![test14.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test14.png)

### `test15.sh`
```bash
#!/bin/bash
# redirecting input file descriptors
exec 6<&0
exec 0<testfile
count=1
while read line
do
  echo "Line #$count: $line"
  count=$[ $count + 1 ]
done
exec 0<&6
read -p "Are you done now? " answer
case $answer in
  Y|y) echo "Goodbye";;
  N|n) echo "Sorry, this is the end.";;
esac
```
![test15.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test15.png)

### `test16.sh`
```bash
#!/bin/bash
# testing input/output file descriptor
exec 3<> testfile
read line <&3
echo "Read: $line"
echo "This is a test line" >&3
```
![test16.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test16.png)

### `badtest.sh`
```bash
#!/bin/bash
# testing closing file descriptors
exec 3> test17file
echo "This is a test line of data" >&3
exec 3>&-
echo "This won't work" >&3
```
![badtest.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/badtest.png)

### `test17.sh`
```bash
#!/bin/bash
# testing closing file descriptors
exec 3> test17file
echo "This is a test line of data" >&3
exec 3>&-
cat test17file
exec 3> test17file
echo "This'll be bad" >&3
```
![test17.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test17.png)

### `test18.sh`
```bash
#!/bin/bash
# testing lsof with file descriptors
exec 3> test18file1
exec 6> test18file2
exec 7< testfile
/usr/bin/lsof -a -p $$ -d0,1,2,3,6,7
```
![test18.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test18.png)

### `test19.sh`
```bash
#!/bin/bash
# creating and using a temp file
tempfile=$(mktemp test19.XXXXXX)
exec 3>$tempfile
echo "This script writes to temp file $tempfile"
echo "This is the first line" >&3
echo "This is the second line." >&3
echo "This is the last line." >&3
exec 3>&-
echo "Done creating temp file. The contents are:"
cat $tempfile
rm -f $tempfile 2> /dev/null
```
![test19.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test19.png)

### `test20.sh`
```bash
#!/bin/bash
# creating a temp file in /tmp
tempfile=$(mktemp -t tmp.XXXXXX)
echo "This is a test file." > $tempfile
echo "This is the second line of the test." >> $tempfile
echo "The temp file is located at: $tempfile"
cat $tempfile
rm -f $tempfile
```
![test20.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test20.png)

### `test21.sh`
```bash
#!/bin/bash
# using a temporary directory
tempdir=$(mktemp -d dir.XXXXXX)
cd $tempdir
tempfile1=$(mktemp temp.XXXXXX)
tempfile2=$(mktemp temp.XXXXXX)
exec 7> $tempfile1
exec 8> $tempfile2
echo "Sending data to directory $tempdir"
echo "This is a test line of data for $tempfile1" >&7
echo "This is a test line of data for $tempfile2" >&8
```
![test21.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test21.png)

### `test22.sh`
```bash
#!/bin/bash
# using the tee command for logging
tempfile=test22file
echo "This is the start of the test" | tee $tempfile
echo "This is the second line of the test" | tee -a $tempfile
echo "This is the end of the test" | tee -a $tempfile
```
![test22.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test22.png)

### `test23.sh`
```bash
#!/bin/bash
# read file and create INSERT statements for MySQL
outfile='members.sql'
IFS=','
while read lname fname address city state zip
do
  cat >> $outfile << EOF
  INSERT INTO members (lname,fname,address,city,state,zip) VALUES
('$lname', '$fname', '$address', '$city', '$state', '$zip');
EOF
done < ${1}
```
![test23.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-15/output-screenshots/test23.png)

## Summary

Understanding how the bash shell handles input and output can come in handy when creating your scripts. You can manipulate both how the script receives data and how it displays data, to customize your script for any environment. You can redirect the input of a script from the standard input (STDIN) to any file on the system. You can also redirect the output of the script from the standard output (STDOUT) to any file on the system.

Besides the STDOUT, you can redirect any error messages your script generates by redirecting the STDERR output. This is accomplished by redirecting the file descriptor associated with the STDERR output, which is file descriptor 2. You can redirect STDERR output to the same file as the STDOUT output or to a completely separate file. This enables you to separate normal script messages from any error messages generated by the script.

The bash shell allows you to create your own file descriptors for use in your scripts. You can create file descriptors 3 through 8 and assign them to any output file you desire. After you create a file descriptor, you can redirect the output of any command to it, using the standard redirection symbols.

The bash shell also allows you to redirect input to a file descriptor, providing an easy way to read data contained in a file into your script. You can use the lsof command to display the active file descriptors in your shell.

Linux systems provide a special file, called `/dev/null`, to allow you to redirect output that you don’t want. The Linux system discards anything redirected to the `/dev/null` file. You can also use this file to produce an empty file by redirecting the contents of the `/dev/null` file to the file.

The `mktemp` command is a handy feature of the bash shell that allows you to easily create temporary files and directories. Simply specify a template for the `mktemp` command, and it creates a unique file each time you call it, based on the file template format. You can also create temporary files and directories in the `/tmp` directory on the Linux system, which is a special location that isn’t preserved between system boots.

The `tee` command is a handy way to send output both to the standard output and to a log file. This enables you to display messages from your script on the monitor and store them in a log file at the same time.

In Chapter 16, you’ll see how to control and run your scripts. Linux provides several different methods for running scripts other than directly from the command line interface prompt. You’ll see how to schedule your scripts to run at a specific time, as well as learn how to pause them while they’re running.

---------------------------------------------------------------------------------------------------
## Chapter 16

### `test1.sh`
```bash
!/bin/bash
# Testing signal trapping
#
trap "echo ' Sorry! I have trapped Ctrl-C'" SIGINT
#
echo This is a test script
#
count=1
while [ $count -le 10 ]
do
  echo "Loop #$count"
  sleep 1
  count=$[ $count + 1 ]
done
#
echo "This is the end of the test script"
#
```
![test1.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test1.png)

### `test2.sh`
```bash
#!/bin/bash
# Trapping the script exit
#
trap "echo Goodbye..." EXIT
#
count=1
while [ $count -le 5 ]
do
  echo "Loop #$count"
  sleep 1
  count=$[ $count + 1 ]
done
#
```
![test2.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test2.png)

### `test3.sh`
```bash
#!/bin/bash
# Modifying a set trap
#
trap "echo 'Sorry... Ctrl-C is trapped.' " SIGINT
#
count=1
while [ $count -le 5 ]
do
  echo "Loop #$count"
  sleep 1
  count=$[ $count + 1 ]
done
#
trap "echo ' I modified the trap!'" SIGINT
#
count=1
while [ $count -le 5 ]
do
  echo "Second Loop #$count"
  sleep 1
  count=$[ $count + 1 ]
done
#
```
![test3.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test3.png)

### `test3b.sh`
```bash
#!/bin/bash
# Removing a set trap
#
trap "echo 'Sorry... Ctrl-c is trapped.'" SIGINT
#
count=1
while [ $count -le 5 ]
do
  echo "Loop #$count" 
  sleep 1
  count=$[ $count + 1 ]
done
#
# Remove the trap
trap -- SIGINT
echo "I just removed the trap"
#
count=1
while [ $count -le 5 ]
do
  echo "Second Loop #$count"
  sleep 1
  count=$[ $count + 1 ]
done
```
![test3b.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test3b.png)

### `test4.sh`
```bash
#!/bin/bash
# Test running in the background
#
count=1
while [ $count -le 10 ]
do
  sleep 1
  count=$[ $count + 1 ]
done
#
```
![test4.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test4.png)

### `test5.sh`
```bash
#!/bin/bash
# Test running in the background with output
#
echo "Start the test script"
count=1
while [ $count -le 5 ]
do
  echo "Loop #$count"
  sleep 5
  count=$[ $count + 1 ]
done
#
echo "Test script is complete"
#
```
![test5.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test5.png)

### `test6.sh`
```bash
#!/bin/bash
echo 'This is Test Script #1'
sleep 20
```
![test6.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test6_test7_test8_test9.png)

### `test7.sh`
```bash
#!/bin/bash
echo 'This is Test Script #2'
sleep 20
```
![test7.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test6_test7_test8_test9.png)

### `test8.sh`
```bash
#!/bin/bash
echo 'And...another Test Script'
sleep 20
```
![test8.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test6_test7_test8_test9.png)

### `test9.sh`
```bash
!/bin/bash
echo 'Then...there was one more test script'
sleep 20
```
![test9.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test6_test7_test8_test9.png)

### `nohup` `test1.sh`
```bash
#!/bin/bash
# Testing signal trapping
#
trap "echo ' Sorry! I have trapped Ctrl-C'" SIGINT
#
echo This is a test script
#
count=1
while [ $count -le 10 ]
do
  echo "Loop #$count"
  sleep 1
  count=$[ $count + 1 ]
done
#
echo "This is the end of the test script"
#
```
![nohup_test1.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/nohup_test1.png)

### `test10.sh`
```bash
#!/bin/bash
# Test job control
#
echo "Script Process ID: $$"
#
count=1
while [ $count -le 10 ]
do
  echo "Loop #$count"
  sleep 10
  count=$[ $count + 1 ]
done
#
echo "End of script..."
#
```
![test10.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test10.png)

### `test11.sh`
```bash
#!/bin/bash
sleep 60
```
![test11.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test11_test12.png)

### `test12.sh`
```bash
#!/bin/bash
sleep 20
echo "This is the script's end"
```
![test12.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test11_test12.png)

### `renice` `test11.sh`
```bash
#!/bin/bash
sleep 60
```
![renice_test11.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/renice_test11.png)

### `test13.sh`
```bash
#!/bin/bash
# Test using at command
#
echo "This script ran at $(date +%B%d,%T)"
echo
sleep 5
echo "This is the script's end..."
#
```
![test13.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test13.png)

### `test13b.sh`
```bash
#!/bin/bash
# Test using at command
#
echo "This script ran at $(date +%B%d,%T)" > test13b.out
echo >> test13b.out
sleep 5
echo "This is the script's end..." >> test13b.out
#
```
![test13b.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-16/output-screenshots/test13b.png)

## Summary

The Linux system allows you to control your shell scripts by using signals. The bash shell accepts signals and passes them on to any process running under the shell process. Linux signals allow you to easily kill a runaway process or temporarily pause a long-running process.

You can use the `trap` statement in your scripts to catch signals and perform commands. This feature provides a simple way to control whether a user can interrupt your script while it’s running.

By default, when you run a script in a terminal session shell, the interactive shell is suspended until the script completes. You can cause a script or command to run in background mode by adding an ampersand sign (&) after the command name. When you run a script or command in background mode, the interactive shell returns, allowing you to continue
entering more commands. Any background processes run using this method are still tied to the terminal session. If you exit the terminal session, the background processes also exit.

To prevent this from happening, use the `nohup` command. This command intercepts any signals intended for the command that would stop it — for example, when you exit the terminal session. This allows scripts to continue running in background mode even if you exit the terminal session.

When you move a process to background mode, you can still control what happens to it. The `jobs` command allows you to view processes started from the shell session. After you know the job ID of a background process, you can use the `kill` command to send Linux signals to the process or use the `fg` command to bring the process back to the foreground in the shell session. You can suspend a running foreground process by using the Ctrl+Z key combination and place it back in background mode, using the `bg` command.

The `nice` and `renice` commands allow you to change the priority level of a process. By giving a process a lower priority, you allow the CPU to allocate less time to it. This comes in handy when running long processes that can take lots of CPU time.

In addition to controlling processes while they’re running, you can also determine when a process starts on the system. Instead of running a script directly from the command line interface prompt, you can schedule the process to run at an alternative time. You can accomplish this in several different ways. The `at` command enables you to run a script once at a preset time. The `cron` program provides an interface that can run scripts at a regularly scheduled interval.

Finally, the Linux system provides script files for you to use for scheduling your scripts to run whenever a user starts a new bash shell. Similarly, the startup files, such as `.bashrc` , are located in every user’s home directory to provide a location to place scripts and commands that run with a new shell.

In the next chapter, we look at how to write script functions. Script functions allow you to write code blocks once and then use them in multiple locations throughout your script.

