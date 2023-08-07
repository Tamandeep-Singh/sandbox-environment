#!/bin/bash

#print current date & time
date 

#check if positional argument is empty
if [[ -z $1 ]]; then
   echo "You must enter a filename as a positional argument."
   exit 1
else 
    touch "$1"
    chmod +x "$1" 
    echo "$PWD/$1 was created with executable permissions."
fi 

