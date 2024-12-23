#!/bin/bash

# Script that checks disk usage"

echo "Check disk usage in Linux Environment"

disk_size=$(df -h | grep /dev/sda3 | awk '{print $5}' | cut -d '%' -f1)

echo "The disk size currently is: $disk_size%"

if [ $disk_size -gt 80 ];
then
	echo "Warning... disk size has more than 80% utilisation"
else
	echo "Enough Disk size is available"
fi


