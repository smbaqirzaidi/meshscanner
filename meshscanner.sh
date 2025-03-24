#!/bin/bash

RED='\033[0;31m'
WHITE='\033[1;37m'
NC='\033[0m' # No color

echo -e "${RED}==============================================="
echo -e "${RED}         M E S H   S C A N N E R            "
echo -e "${RED}==============================================="
echo -e "${WHITE}-------------------------------------------------"

read -p "Enter the subnet to scan (e.g., 192.168.1.0/24): " subnet

# Scan all IP addresses in the given subnet using fping and show only reachable ones
fping -a -g $subnet/24 2>/dev/null

echo -e "${RED}Happy scanning!${NC}"
