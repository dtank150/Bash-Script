#!/bin/bash

echo "How many lines of /etc/passwd would you like to see?"
read num_lines

head -n "$num_lines" /etc/passwd
