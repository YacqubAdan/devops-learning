#!/bin/bash


hello_world() {
    echo "hello world"
}

greet_person() {
    local name="$1"
    echo "Hello, $name!" 
}

print_args() {
    echo "Number of arguments: $#"
    echo "Script name: $0"
    echo "First argument: $1"
    echo "Second argument: $2"
    echo "All arguments: $@"
}



# greet_person "John"
# greet_person "Sam"


print_args "John" "Sam" "Alice"
