#!/bin/bash

read -p "Please enter a file extension: " extension

read -p "Please enter a file prefix: (Press ENTER for $(date +'%Y-%m-%d')). " prefix

if [ -z "$prefix" ]; then
    prefix=$(date +'%Y-%m-%d')
fi

for file in *.$extension; do
  
    if [ -e "$file" ]; then
        filename="${file%.$extension}"
        new_filename="$prefix-$filename.$extension"
        echo "Renaming $file to $new_filename."
       
        mv "$file" "$new_filename"
    else
        echo "No files with .$extension extension found in the current directory."
    fi
done
