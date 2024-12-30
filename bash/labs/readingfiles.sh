#!/bin/bash

# read_file() {
#     local file_path="$1"

#     while IFS= read -r line; do
#         echo "$line"
#     done < "$file_path"
# }

# read_file "./log.txt"


process_file() {
    local file_path="$1"
    cat "$file_path" | while IFS= read -r line; do
        echo "Processing line: $line"
        # additional processing logic
    done
}

process_file "./log.txt"