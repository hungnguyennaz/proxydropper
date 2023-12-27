#!/bin/bash

if [ -f "log.txt" ]; then
    grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" log.txt | \
        grep -vE "0\.0\.0\.0|127\.0\.0\.1|172\.18\.0\.1|192\.168\.[0-9]{1,3}\.[0-9]{1,3}|10\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | \
        sort -u > raw_ipv4.txt

    echo "Extracted IPs and saved to raw_ipv4.txt"
else
    echo "Error: log.txt not found."
fi
