#!/bin/bash

curl --compressed https://raw.githubusercontent.com/stamparm/ipsum/master/ipsum.txt 2>/dev/null | \
    grep -v "#" | \
    grep -v -E "\s[1-2]$" | \
    cut -f 1 > ipsum.txt

echo "ipsum.txt has been updated."
