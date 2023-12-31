#!/bin/bash

#variable assigment follows <varname>=<value> 
#must have no whitespace between <varname> and <value>

git_name="sandbox-environment"
filename="ex1_variables.sh"

#can embed variables using $<varname>
echo "[$git_name]: Script name ->  $filename"

echo "Enter in your name:"

#read user input using read <varname>
read name

echo "Your name is: $name"

#access global ENV variables
echo "Random value: $RANDOM"

#positional arguments follow the convention $1, $2, etc
echo "Positional argument one: $1 , positional argument two: $2"

#store command output using $(<command>) 
ls_output=$(ls)

echo "ls command output: $ls_output"
