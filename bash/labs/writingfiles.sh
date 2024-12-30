#!/bin/bash

write_to_file() {
    local file_path="$1"
    local data="$2"

    echo "$data" >> "$1"
}



write_to_file "read.txt" "Hello"