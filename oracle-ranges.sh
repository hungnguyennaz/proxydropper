#!/bin/bash
oracle_ip_ranges=$(curl -s https://docs.oracle.com/en-us/iaas/tools/public_ip_ranges.json)
ipv4_cidrs=$(echo $oracle_ip_ranges | grep -oE '"cidr": "[^"]+"' | awk -F'"' '{print $4}' | grep -E '\b([0-9]{1,3}\.){3}[0-9]{1,3}/[0-9]+\b')
echo "$ipv4_cidrs" > oracle.txt
