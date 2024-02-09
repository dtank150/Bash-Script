#!/bin/bash

echo "Arguments:- $@"
echo "Total Arguments:- $#"

for filepath in "$@"
do
     if [ -d "$filepath" ]; then
     	echo "This is '$filepath' is a Directory."
     	
     elif [ -x "$filepath" ]; then
     	echo "This is '$filepath' is an Excutable File."
     
     elif [ -f "$filepath" ]; then
     	echo "This is '$filepath' is a File."
     	
     else
     	echo "Given Arguments $filepath Is Not a Directory, File or Executable File."
     
     fi
done
