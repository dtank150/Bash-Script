#!/bin/bash

random_number=$RANDOM

echo "Random number: $random_number"

logger -p user.info "Random number generated: $random_number"
