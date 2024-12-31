#!/bin/bash

: '
Level 8: Multi-File Searcher

Mission: Create a script that searches for a specific word or phrase across all .log 
files in a directory and outputs the names of the files that contain the word or phrase.
' 



level_eight() {
    
        # Check if a directory is provided
        if [ -z "$1" ]; then
            echo "No directory provided"
            exit 1
        fi
    
        # Check if the directory exists
        if [ ! -d "$1" ]; then
            echo "Directory: $1 does not exist"
            exit 1
        fi
    
        # Find all .log files in the directory and search for the word or phrase
        grep -lR "$2" "$1"/*.txt
}


level_eight "./Battlefield" "knight"