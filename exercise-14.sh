#!/bin/bash

if [ $1 == "-c" ]
then
  echo "Creating 10 .jpg files..."
  for i in {1..10}
  do
    touch "$i.jpg"
  done
  echo "Files created"
  ls *.jpg
fi

for file in *.jpg
do
  if [ -f "$file" ]
  then
    echo "Changing name: $file -> $(date +%Y%m%d)-$file"
    mv "$file" "$(date +%Y%m%d)-$file"
  else
    echo "No ".jpg" files"
  fi
done

echo "Names changed"
ls *.jpg

if [ $2 == "-d" ]
then
  echo -e "\nDeleting .jpg files..."
  rm *.jpg
  echo "Files deleted"
fi
