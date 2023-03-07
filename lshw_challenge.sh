#!/bin/bash

# Script:                   Ops 201 Class 02 Ops Challenge Solution
# Author:                   Lilian Mburu
# Date of last revision:    Mar 6th 2023
# Purpose:                 Use lshq command to display system information to the screen about specific components

# Main

   # Name of the computer
   echo "The system knows this device as: "
   sudo lshw -c disk | grep -i "logical name"

   # CPU
   echo "CPU Component Summary: "
   sudo lshw -c processor | grep -v "version" | grep -v "capabilities"

   # RAM 
   echo "RAM Component Summary:"
   sudo lshw -c memory | grep -A3 -i "*-memory"

   # Display adapter
   echo "Display Component Summary: "
   sudo lshw -c display | grep -v "logical name" | grep -v "version"

   # Network adapter
   echo "Network Component Summary: "
   sudo lshw -c network 
    
# End