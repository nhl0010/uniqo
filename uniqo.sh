#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 file1.txt file2.txt"
  exit 1
fi

file1="$1"
file2="$2"

# Normalize, sort, and compare
comm -23 \
  <(sort -u "$file1") \
  <(sort -u "$file2")
