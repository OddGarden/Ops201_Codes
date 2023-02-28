#!/bin/bash

# Script:                   Ops 201 Class 05 Ops Challenge Solution
# Author:                   Lilian Mburu
# Date of last revision:    Feb 27th 2023
# Purpose:                  Prints the running processes. Accepts user to input PID.
#                           Kills a process with the PID provided by a user.

# Main


echo -e "$(ps -eo pid,user,pcpu,comm)"$'\n'$'\n'"Enter PID to terminate: "



continue="yes"

while [[ $continue == "yes" ]];
do
    echo -e "$(ps -eo pid,user,pcpu,comm)"
    echo $'\n'"Enter PID to terminate:" 
    read  continue
    kill -9 $continue
    echo  $'\n'"PID $continue has been terminated"
    echo $'\n'"Do you want to terminate another process?"
    read continue
done


# End