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

---------------------------------------------------------------------------------

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

---------------------------------------------------------------------

## Chapter 15

### `unknown.sh`
```bash
```
![unknown.sh](img_url)


