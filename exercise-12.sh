#!/bin/bash

file_count () {
  local COUNT=$(ls -1 | wc -l)
  echo "The number of files in the current directory is: $COUNT"
}

file_count