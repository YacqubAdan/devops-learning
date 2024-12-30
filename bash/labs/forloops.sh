#!/bin/bash


employees=("John" "Doe" "Jane" "Smith" "Tom" "Brown")

for (( i=0; i<${#employees[@]}; i++ ))
do
 echo "Employee: ${employees[$i]}"
done


fruits=("apple" "banana" "orange" "grape")

for fruit in "${fruits[@]}"
do
    echo "Fruits: $fruit"
done

# $(seq 1 5)