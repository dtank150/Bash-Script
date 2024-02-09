#!/bin/bash

shopt -s nullglob

today=$(date +'%Y-%m-%d')

for file in *.jpg; do

    if [ -e "$file" ]; then
      
        filename="${file%.jpg}"
      
        mv "$file" "$today-$filename.jpg"
        echo "Renamed $file to $today-$filename.jpg"
    else
        echo "No JPG files found in the current directory."
    fi
done
