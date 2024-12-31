#!/bin/bash

: '
Level 11: Automated Disk Space Report

Mission: Create a script that checks the disk space usage of a specified directory 
and sends an alert if the usage exceeds a given threshold.

'

level_11() {
    directory_path="$1"
    threshold="$2"

    # Check if directory and threshold are provided
    if [ -z "$directory_path" ] || [ -z "$threshold" ]; then
        echo "Usage: level_11 <directory_path> <threshold>"
        exit 1
    fi

    # Check if the directory exists
    if [ ! -d "$directory_path" ]; then
        echo "Directory: $directory_path does not exist"
        exit 1
    fi

    # Check disk usage
    disk_usage=$(du -sh "$directory_path" | awk '{print $1}')

    # Check if disk usage exceeds threshold
    if [ ${disk_usage%?} -gt $threshold ]; then
        echo "Disk usage for $directory_path exceeds $threshold"
    else
        echo "Disk usage for $directory_path is within threshold"
    fi
}