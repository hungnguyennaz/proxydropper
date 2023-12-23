#!/bin/bash

input_file="blacklist.txt"
output_file="blacklist-out.txt"

if [ ! -f "$input_file" ]; then
    echo "Error: Input file not found."
    exit 1
fi

sort "$input_file" | uniq > "$output_file"

echo "Duplicates removed. Output written to: $output_file"