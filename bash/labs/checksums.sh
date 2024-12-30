#!/bin/bash

# Checksums compare integrity of a file over time or across different systems. See if their values match

calculate_md5sum() {
    local file_path="$1"
    md5sum "$file_path"
}


calculate_sha256() {
    local file_path="$1"
    sha256sum "$file_path"
}

compare_checksums() {
    local checksum1="$1"
    local checksum2="$2"

    if [[ "$checksum1" == "$checksum2" ]]; then
        echo "Checksums match"
    else
        echo "Checksums do not match. Integrity compromised"
    fi
}


calculate_md5sum "read.txt"

calculate_sha256 "read.txt"


compare_checksums "123" "124"