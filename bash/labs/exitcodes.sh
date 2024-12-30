#!/bin/bash

command -v git 2>/dev/null

if [[ $? -ne 0 ]]; then
    echo "Git is not installed."
    exit 1
else 
    echo "Git is installed."
fi