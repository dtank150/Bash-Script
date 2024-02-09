#!/bin/bash

file_count() {
    local directory="$1"  # Accept directory as an argument
    local count=$(ls -l "$directory" | grep "^-" | wc -l)
    echo "$directory:"
    echo "$count"
}

file_count "/etc"

file_count "/var"

file_count "/usr/bin"
