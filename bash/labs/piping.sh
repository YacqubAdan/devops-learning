#!/bin/bash


get_file_count() {
    local directory="$1"
    local file_count

    file_count=$(ls "$directory" | wc -l)

    echo "File count: $file_count in $directory"
}


search_logs() {
    local search_term="$1"
    grep "$search_term" logs.txt | awk '{ print $2 }'
}



# search_logs "ERROR"
get_file_count "./"