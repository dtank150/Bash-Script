#!/bin/bash

set -e

# Print commands as they execute
set -x

# First ls command (should succeed)
ls

# Second ls command (should fail)
ls non_existent_directory

# Third ls command (should not execute if the second one fails)
ls

# Rest of the script
echo "Script completed successfully"
