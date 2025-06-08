#!/bin/bash

# Black Box Legacy Reimbursement System - Hybrid Implementation
# This script takes three parameters and outputs the reimbursement amount
# Usage: ./run.sh <trip_duration_days> <miles_traveled> <total_receipts_amount>

# Validate that we have exactly 3 arguments
if [ $# -ne 3 ]; then
  echo "Error: Exactly 3 arguments are required"
  exit 1
fi

# Pass parameters to our Python implementation
python3 "$(dirname $0)/advanced_rule_model.py" "$1" "$2" "$3"
