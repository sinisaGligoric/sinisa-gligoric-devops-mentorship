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
