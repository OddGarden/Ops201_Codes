#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Lilian Mburu
# Date of last revision: Feb 20th 2023
# Purpose: Prints the login history of users on this computer.

# Main
   user=$(whoami)

   get_login_history() {
        last $1
   }

    get_login_history $user

# End