#!/bin/bash

# Validate inputs
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <trip_days> <miles> <receipts>" >&2
    exit 1
fi

# Check if inputs are numeric
if ! [[ "$1" =~ ^[0-9]+$ ]] || ! [[ "$2" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$3" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: All arguments must be numeric" >&2
    exit 1
fi

# Call the Python script with the provided arguments
python3 advanced_rule_model.py "$1" "$2" "$3"
