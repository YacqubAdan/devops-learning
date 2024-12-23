#!/bin/bash

echo "This program gets the top 5 files in the file system passed as an argument"

path=$1

du -ah $path | sort -nr | head -n 5 > /tmp/filesize.txt

echo "this is the list of big files in the file system $path"

cat /tmp/filesize.txt
