#!/bin/bash

: '
Level 14: User-Friendly Menu Script

Mission: Create an interactive script that presents a menu with options for different system tasks 
(e.g., check disk space, show system uptime, list users), and executes the chosen task.
'

level_fourteen() {
    echo "Select an option:"
    echo "1. Check Disk Space"
    echo "2. Show System Uptime"
    echo "3. List Users"
    echo "4. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            df -h
            ;;
        2)
            uptime
            ;;
        3)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
}

level_fourteen