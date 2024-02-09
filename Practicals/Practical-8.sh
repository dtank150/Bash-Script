#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file_or_directory1> <file_or_directory2> ..."
    exit 1
fi


for file_or_dir in "$@"; do
  
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
    echo
done
