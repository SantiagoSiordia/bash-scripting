#!/bin/bash

# Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. Also perform an ls command against the file or directory with the long listing option.

echo -n "Enter a file or directory name: "

read FILE_OR_DIR

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
