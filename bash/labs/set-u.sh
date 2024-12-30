#!/bin/bash

set -u # set -u will stop the script if a variable is not set

X=10
Y=20
Z=$((X + Y + W ))
echo "Z equals $Z"
