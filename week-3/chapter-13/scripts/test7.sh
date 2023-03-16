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
