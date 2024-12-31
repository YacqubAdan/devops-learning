#!/bin/bash

: '
LEVEL 5: THE BOSS BATTLE - COMBINING BASICS
Mission: Combine what you have learned! Write a script that:
Tasks:
1. Creates a directory names 'Battlefield'
2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
4. List the contents of both Battlefield and Archive.
'


# Create a directory named 'Battlefield'

mkdir -p "./Battlefield"


# Create array of files
files=("knight.txt" "sorcerer.txt" "rogue.txt")

for file in "${files[@]}"
do
    touch "./Battlefield/$file"
done 


# Check if knight.txt exists; if it does, move it to a new directory called Archive.

if [ -f "./Battlefield/knight.txt" ]; then
    mkdir -p "./Archive"
    mv "./Battlefield/knight.txt" "Archive"
fi

# list the current contents of both Battlefield and Archive
ls -l "./Battlefield" "./Archive"