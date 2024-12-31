#!/bin/bash

: '
Level 7: File Sorting Script

Mission: Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.

'

level_seven() {

  file_path="$1"


    # Checks to see if path has been provided or exists.
    if [ -z "$file_path" ]; then
        echo "No directory provided"
        exit 1
    fi

    # Check if the directory exists
        if [ ! -d "$file_path" ]; then
            echo "Directory: $1 does not exist"
            exit 1
        fi

    # Find all .txt files in the directory and sort them by size
     find "$file_path" -type f -name "*.txt" -exec du -b {} + | sort -n | awk '{print $2}'
}



level_seven "./Battlefield"