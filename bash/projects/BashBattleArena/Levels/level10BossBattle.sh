#!/bin/bash

: '

Level 10: Boss Battle 2 - Intermediate Scripting

Mission: Write a script that:
1. Creates a directory called Arena_Boss.
2. Creates 5 text files inside the directory, named file1.txt to file5.txt.
3. Generates a random number of lines (between 10 and 20) in each file.
4. Sorts these files by their size and displays the list.
5. Checks if any of the files contain the word 'Victory', and if found, moves the file to a directory called Victory_Archive.

'


level_ten() {
    # Create the Arena_Boss directory
    mkdir Arena_Boss
    
    # Create 5 text files
    for i in {1..5}; do
        touch Arena_Boss/file$i.txt
    done
    
    # Generate random number of lines in each file
    for i in {1..5}; do
        lines=$(( $RANDOM % 11 + 10 ))
        for j in $(seq 1 $lines); do
        echo "This is line $j" >> Arena_Boss/file$i.txt
        done
    done
    
    # Sort files by size
    ls -lS Arena_Boss
    
    # Check if any file contains the word 'Victory'
    for i in {1..5}; do
        if grep -q "Victory" Arena_Boss/file$i.txt; then
        mv Arena_Boss/file$i.txt Victory_Archive
        fi
    done
}



level_ten