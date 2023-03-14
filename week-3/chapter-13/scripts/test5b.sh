#!/bin/bash
# reading values from a file
# Adding IFS=$'\n' statement to your script tells the bash shell to ignore spaces and tabs in data values
file="states"
IFS=$'\n'
for state in $(cat $file)
do
  echo "Visit beautiful $state"
done
