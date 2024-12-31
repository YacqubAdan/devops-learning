#!/bin/bash

: '
Level 9: Script to Monitor Directory Changes
Mission: Write a script that monitors a directory for any changes (file creation, modification, or deletion) 
and logs the changes with a timestamp.

'


level_nine() {
    directory_path="$1"

    # Check if a directory is provided
    if [ -z "$directory_path" ]; then
        echo "No directory provided"
        exit 1
    fi

    # Check if the directory exists
    if [ ! -d "$directory_path" ]; then
        echo "Directory: $1 does not exist"
        exit 1
    fi

    # Monitor the directory for changes
    inotifywait -m -r -e create,modify,delete --timefmt '%F %T' --format '%T %w %f' "$directory_path"

}



level_nine "./"