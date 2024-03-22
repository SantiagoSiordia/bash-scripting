#!/bin/bash

fileName=$1

if [ $# -ne 1 ]; then
  echo "Usage: $0 filename"
  exit 1
fi

if [ -f $fileName ]; then
  echo "$fileName is a regular file."
  exit 0
elif [ -d $fileName ]; then
  echo "$fileName is a directory."
  exit 1
else
  echo "$fileName is another type of file."
  exit 2
fi