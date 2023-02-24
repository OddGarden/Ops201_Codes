#!/bin/bash

# Script:                   Ops 201 Class 03 Ops Challenge Solution
# Author:                   Lilian Mburu
# Date of last revision:    Feb 23th 2023
# Purpose:                  Creates directories and stores them in an array. Array variable is used 
#                           to create a file in each directory.

# Main

    mkdir "dir1" "dir2" "dir3" "dir4"
  
    dir_list=("dir1" "dir2" "dir3" "dir4")

    touch ${dir_list[0]}/new.txt ${dir_list[1]}/new.txt  ${dir_list[2]}/new.txt ${dir_list[3]}/new.txt

# End