#!/bin/bash

# Script:                   Ops 201 Class 02 Ops Challenge Solution
# Author:                   Lilian Mburu
# Date of last revision:    Mar 2nd 2023
# Purpose:                  Prompts user for a file or directory. Detect if it exists, if not creates one. 


# Variables
name=""
search_again="yes"
new_file=""
opt=""

# Functions
repeat() {
    read -p "Search Again? " search_again
}

# Arays
create=("Create File" "Create Directory" "Exit")

# Main


    while [[ $search_again == "yes" ]]; do
        read -p "What file or directory do you want to search for: " name
        if [ -d "$name" ]; then
            echo "Directory exists" 
            repeat
        elif [ -f "$name" ]; then
            echo "File Exists"
            repeat
        else 
            echo "This file or directory does not exist."
            read -p "Do you want to  1) ${create[0]},  2) ${create[1]}, 3) ${create[2]}" opt
            if [[ $opt == "1" ]]; then 
                touch $name
                echo "File Created"
                repeat
            elif [[ $opt == "2" ]]; then 
                mkdir $name
                echo "Directory Created"
                repeat
            else 
                echo "You have selected to exit  OR did not provide the correct option. Exiting now.."
                exit
            fi
        fi
    done

   

# End
