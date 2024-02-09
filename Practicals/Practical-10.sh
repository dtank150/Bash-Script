#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 3  # Exit with status 3 for incorrect usage
fi

if [ ! -e "$1" ]; then
    echo "Error: '$1' does not exist."
    exit 4  # Exit with status 4 for non-existent file or directory
fi

if [ -f "$1" ]; then
    echo "'$1' is a regular file."
    exit 0  # Exit with status 0 for regular file

elif [ -d "$1" ]; then
    echo "'$1' is a directory."
    exit 1  # Exit with status 1 for directory
else
    echo "'$1' is some other type of file."
    exit 2  # Exit with status 2 for other types of files
fi
