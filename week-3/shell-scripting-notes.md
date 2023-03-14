# week-3-shell-scripting
## Scripts and screenshots below are captured during writing and executing scripts from the book `Linux Command Line and Shell Scripting Bible, 3rd Edition` - `Chapter 13`, `Chapter 14`, `Chapter 15` and `Chapter 16`.
----------------------------------------------------------------------------------

# Table of Contents
## 1. [Chapter 13](#chapter-13)
## 2. [Chapter 14](#chapter-14)
## 3. [Chapter 15](#chapter-15)
## 4. [Chapter 16](#chapter-16)

----------------------------------------------------------------------------------

## Chapter 13

### `test1.sh`
![test1.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/scripts/test1.sh)
![test1.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test1.png)

### `test1b.sh`
```
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
```
#!/bin/bash
# another example of how not to use the for command
for test in I don't know if this'll work
do
  echo "word:$test"
done
```
![badtest1.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/badtest1.png)


### `test2.sh`
```
#!/bin/bash
# another example of how not to use the for command
for test in I don\'t know if "this'll" work
do
  echo "word:$test"
done
```
![test2.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test2.png)

### `badtest2.sh`
```
#!/bin/bash
# another example of how not to use the for command
for test in Nevada New Hampshire New Mexico New York North Carolina
do
  echo "Now going to $test"
done
```
![badtest2.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/badtest2.png)

### `test3.sh`
```
#!/bin/bash
# an example of how to properly define values
for test in Nevada "New Hampshire" "New Mexico" "New York"
do
  echo "Now going to $test"
done
```
![test3.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test3.png)

### `test4.sh`
```
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
```
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
```
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
```
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
```
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
```
#!/bin/bash
# testing the C-style for loop
for (( i=1; i <= 10; i++ ))
do
  echo "The next number is $i"
done
```
![test8.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test8.png)

### `test9.sh`
```
#!/bin/bash
# multiple variables
for (( a=1, b=10; a <= 10; a++, b-- ))
do
  echo "$a - $b"
done
```
![test9.sh](https://github.com/sinisaGligoric/sinisa-gligoric-devops-mentorship/blob/week-3-shell-scripting/week-3/chapter-13/output-screenshots/test9.png)

### `test10.sh`
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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
```
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

### `unknown.sh`
```
```
![unknown.sh](img_url)

