#!/bin/bash


greet_user(){
    echo "Enter your name"
    read name
    echo "Hello $name"
}

greet(){

    local name

    if [ $# -eq 0 ]; then
        echo "What is your name"
        read name
    else 
        name=$1
    fi

    echo "Hello $name"
     
}

# greet_user
greet "Yacquub"