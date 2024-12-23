#!/bin/bash

echo "This script deletes files in a given directory that are older than 30 days"

path=$1

echo "Searching for old files to delete in $path..."

find $path -mtime +30 -delete

if [[ $? -eq 0 ]];
then
	echo "Old files from $path have successfully been deleted!"
else
	echo "We are having trouble deleting the files"
fi
