#!/bin/bash

length="$1"
width="$2"


area=$((length*width))
parameter=$((2*(length+width)))

echo "The rectangle area is $area"
echo "The parameter is $parameter"
