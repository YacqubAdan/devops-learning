#!/bin/bash

: '
Level 15: Boss Battle 3 - Advanced Scripting

Mission: Combine the skills youve gained! Write a script that:

1. Presents a menu to the user with the following options:

- Check disk space
- Show system uptime
- Backup the BashBattleArena directory and keep the last '3' backups
- Parse a configuration file settings.conf and display the values

2. Execute the chosen task.

'


level_fifteen() {
    echo "Select an option:"
    echo "1. Check Disk Space"
    echo "2. Show System Uptime"
    echo "3. Backup the BashBattleArena directory"
    echo "4. Parse configuration file settings.conf"
    echo "5. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            df -h
            ;;
        2)
            uptime
            ;;
        3)
            source_directory="bash/projects/BashBattleArena"
            backup_directory="bash/projects/Backup"
            timestamp=$(date +%Y%m%d%H%M%S)
            backup_file="$backup_directory/backup_$timestamp.tar.gz"
            tar -czf "$backup_file" "$source_directory"
            backup_count=$(ls -1 "$backup_directory" | wc -l)
            if [ $backup_count -gt 3 ]; then
                oldest_backup=$(ls -1t "$backup_directory" | tail -n 1)
                rm "$backup_directory/$oldest_backup"
            fi
            ;;
        4)
            if [ -f "settings.conf" ]; then
                while IFS='=' read -r key value
                do
                    echo "$key = $value"
                done < settings.conf
            else
                echo "settings.conf file not found"
            fi
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac

}


level_fifteen


