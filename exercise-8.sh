#!/bin/bash

# Modify the exercise 7 script to accept an unlimited number of files and directories as arguments. Hint: You'll want to use a special variable.

# Check if the user has provided arguments
if [ $# -eq 0 ]
then
  echo -e "No arguments provided.\n"
  exit 1
fi

# Loop through the arguments

for FILE_OR_DIR in $@
do
  if [ ! -e $FILE_OR_DIR ]
  then
    echo -e "The file/directory $FILE_OR_DIR does not exist."
    continue
  fi


  echo -e "\n\nFor fille/directory ${FILE_OR_DIR}:\n"

  if [ -f $FILE_OR_DIR ]
  then
    echo -e "$FILE_OR_DIR is a regular file.\n"
  elif [ -d $FILE_OR_DIR ]
  then
    echo -e "$FILE_OR_DIR is a directory.\n"
  else
    echo -e "$FILE_OR_DIR is another type of file.\n"
  fi

  ls -l $FILE_OR_DIR
done