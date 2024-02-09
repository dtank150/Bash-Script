#!/bin/bash

read -p "Enter the name of a file or directory: " file_or_dir

# Check if the input exists
if [ -e "$file_or_dir" ]; then
    # Report the type of file
    if [ -f "$file_or_dir" ]; then
        echo "$file_or_dir is a regular file."
    elif [ -d "$file_or_dir" ]; then
        echo "$file_or_dir is a directory."
    else
        echo "$file_or_dir is some other type of file."
    fi
    
    ls -l "$file_or_dir"
else
    echo "$file_or_dir does not exist."
fi
