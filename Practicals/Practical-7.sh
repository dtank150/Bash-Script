#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 1
fi

file_or_dir="$1" 

if [ -e "$file_or_dir" ]; then
   
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
