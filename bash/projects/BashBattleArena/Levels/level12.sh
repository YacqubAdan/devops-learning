#!/bin/bash

: '
Level 12: Simple Configuration File Parser

Mission: Write a script that reads a configuration file in the 
format KEY=VALUE and prints each key-value pair.
' 

level_twelve() {
    config_file="$1"

    # Check if a configuration file is provided
    if [ -z "$config_file" ]; then
        echo "Usage: level_twelve <config_file>"
        exit 1
    fi

    # Check if the configuration file exists
    if [ ! -f "$config_file" ]; then
        echo "Configuration file: $config_file does not exist"
        exit 1
    fi

    # Read the configuration file and print key-value pairs
    while IFS='=' read -r key value; do
        echo "Key: $key, Value: $value"
    done < "$config_file"
}

