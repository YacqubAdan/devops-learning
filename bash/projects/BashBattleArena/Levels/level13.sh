#!/bin/bash

: '
Level 13: Backup Script with Rotation

Mission: Create a script that backs up a directory to a 
specified location and keeps only the last 5 backups.
'


level_thirteen() {
    source_directory="$1"
    backup_directory="$2"

    # Check if source and backup directories are provided
    if [ -z "$source_directory" ] || [ -z "$backup_directory" ]; then
        echo "Usage: level_thirteen <source_directory> <backup_directory>"
        exit 1
    fi

    # Check if the source directory exists
    if [ ! -d "$source_directory" ]; then
        echo "Source directory: $source_directory does not exist"
        exit 1
    fi

    # Check if the backup directory exists, if not create it
    if [ ! -d "$backup_directory" ]; then
        mkdir -p "$backup_directory"
    fi

    # Backup the source directory to the backup directory
    timestamp=$(date +%Y%m%d%H%M%S)
    backup_file="$backup_directory/backup_$timestamp.tar.gz"
    tar -czf "$backup_file" "$source_directory"

    # Keep only the last 5 backups
    backup_count=$(ls -1 "$backup_directory" | wc -l)
    if [ $backup_count -gt 5 ]; then
        oldest_backup=$(ls -1t "$backup_directory" | tail -n 1)
        rm "$backup_directory/$oldest_backup"
    fi

}