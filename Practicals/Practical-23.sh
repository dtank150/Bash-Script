#!/bin/bash

# Do not exit on error
set +e

# Print commands as they execute
set -x

# First ls command (should succeed)
ls

# Second ls command (may fail)
ls non_existent_directory || true

# Third ls command (should succeed)
ls

# Rest of the script
echo "Script completed"
