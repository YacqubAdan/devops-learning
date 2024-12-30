#!/bin/bash

validate_age() {

    local age=$1

    if [[ ! $age =~ ^[0-9]+$ ]]; then
        echo "Invalid age"
        return 1
    fi

    if (( age < 18 )); then
        echo "Sorry, you must be at least 18 years old"
        return 1
    fi

    echo "Congratulations! you are eligible"
    return 0
}


echo "Please enter your age: "
read user_age

validate_age "$user_age"
exit_code=$?

if [[ $exit_code -eq 0 ]]; then
    echo "You can proceed"
else
    echo "Input validation vailed."
fi