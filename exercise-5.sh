#!/bin/bash

for ANIMAL in man bear pig dog cat sheep
do
  echo "I am a ${ANIMAL}."
done

echo -e "\nThese are the animals in the loop.\n"

animals=("man" "bear" "pig" "dog" "cat" "sheep")
for ANIMAL in ${animals[@]}
do
  echo "I am a ${ANIMAL}."
done