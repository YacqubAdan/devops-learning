#!/bin/bash
# Path to the Windows Recycle Bin from WSL. -> Will modify this code 
# To create a cronjob use command crontab -e -> 0 0 1 * * /path/to/file.sh

RECYCLE_BIN_PATH_C="/mnt/c/\$Recycle.Bin"
RECYCLE_BIN_PATH_D="/mnt/d/\$Recycle.Bin"

# Delete all files in the recycle bin
rm -rf "$RECYCLE_BIN_PATH_C"/* "$RECYCLE_BIN_PATH_D"/*
if [[ $? -eq 0 ]]; then
    echo "Recycle bin emptied successfully"
else
    echo "Command failed with exit status $?."
fi


