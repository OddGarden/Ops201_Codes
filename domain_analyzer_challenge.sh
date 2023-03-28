#!/bin/bash

# Script:                   Ops 201 Class 13 Ops Challenge Solution
# Author:                   Lilian Mburu
# Date of last revision:    Mar 28 2023
# Purpose:                  Script fetches domain information for a given input    

# Variables
domain=""

# Functions
fetch_domain_info() {
    echo "***INFORMATION FROM WHOIS***" >> "domain_info.txt"
    whois $1 >> "domain_info.txt"
    echo "***INFORMATION FROM DIG***" >> "domain_info.txt"
    dig $1 >> "domain_info.txt"
    echo "***INFORMATION FROM HOST***" >> "domain_info.txt"
    host $1 >> "domain_info.txt"
    echo "***INFORMATION FROM NSLOOKUP***" >> "domain_info.txt"
    nslookup $1 >> "domain_info.txt"
}

# Main

    > "domain_info.txt" # clear out the file contents before appending new data
   read -p "What is the domain name you are interested in? " domain
   # https://stackoverflow.com/questions/15268987/bash-based-regex-domain-name-validation
   domain | grep -P "^[a-zA-Z0-9][a-zA-Z0-9-]{1,61}[a-zA-Z0-9](?:\.[a-zA-Z]{2,})+$"
#    fetch_domain_info $domain
    
# End