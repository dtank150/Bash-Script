#!/bin/bash

log_message() {
    local message=$1
    local tag="randomly"
    local pid=$$
    logger -p user.info -t "$tag[$pid]" "$message"
}

for ((i=1; i<=3; i++)); do
    random_number=$RANDOM
    echo "Random number $i: $random_number"
    log_message "Random number generated: $random_number"
done
