#!/bin/bash

file_count() {
    local count=$(ls -l | grep "^-" | wc -l)
    echo "Number of files in the current directory: $count"
}

file_count
