#!/bin/bash

# Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

FILE_OR_DIR=$1

if [ ! -e $FILE_OR_DIR ]
then
  echo "The file/directory $FILE_OR_DIR does not exist."
  exit 1
fi

if [ -f $FILE_OR_DIR ]
then
  echo "$FILE_OR_DIR is a regular file."
elif [ -d $FILE_OR_DIR ]
then
  echo "$FILE_OR_DIR is a directory."
else
  echo "$FILE_OR_DIR is another type of file."
fi

ls -l $FILE_OR_DIR