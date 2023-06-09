#!/bin/bash
<<
> Bash Script Language
> Change folder of an user
> By: Hugo
> Date: August/2020

# Variables
user=$1
folder=$2

# Check if the user exists
if [ $(id -u $user > /dev/null 2>&1; echo $?) -eq 0 ]; then
    # Check if the folder exists
    if [ -d $folder ]; then
        # Change the folder of the user
        usermod -d $folder $user
        echo "The folder of the user $user was changed to $folder"
    else
        echo "The folder $folder does not exist"
    fi
else
    echo "The user $user does not exist"
fi
