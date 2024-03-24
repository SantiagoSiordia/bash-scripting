#!/bin/bash

file_count () {
  local COUNT=$(ls -1 $1 | wc -l)
  echo "The number of files in the $1 directory is: $COUNT"
}

for DIR in /etc /var /usr/bin
do
  file_count $DIR
done
