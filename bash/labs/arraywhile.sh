#!/bin/bash

fruits=("apple", "banana", "orange", "grape")
index=0

while [ $index -lt ${#fruits[@]} ]
do
    echo "Fruit: ${fruits[$index]}"
    ((index++))
done