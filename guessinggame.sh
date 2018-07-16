#!/usr/bin/env bash

files=`ls | wc -l`

function guess {
  	echo "Type a number and press Enter:"
  	read a
  	! [[ $a =~ $re ]] && echo "It is not a number my friend" && continue
  	[ $a -lt $files ] && echo "Too low my friend"
  	[ $a -gt $files ] && echo "Too high my friend"
}

re='^[0-9]+$'

echo "Hello!"
echo "How many files are there in the current directory?"

while [[ $a -ne $files ]]
  do
  	guess
  done

echo "Well done! That's correct!"
echo "End program"
exit 0