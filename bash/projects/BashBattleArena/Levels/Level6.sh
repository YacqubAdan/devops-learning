#!/bin/bash

: '
Level 6: Argument Parsing
Mission: Write a script that accepts a filename as an argument 
and prints the number of lines in that file. If no filename is provided, 
display a message saying 'No file provided'.

'


level_six() {

# Check if a parameter in this case filename is provided -z checks if string is empty

if [ -z "$1" ]; then
    echo "No filename provided"
    exit 1
fi

# Check if the file exists with -f

if [ ! -f "$1" ]; then
    echo "File does not exist"
    exit 1
fi

line_count=$(wc -l < "$1")
echo "Number of lines in $1: $line_count"

}






level_six hat.txt