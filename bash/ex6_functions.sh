#!/bin/bash

echo "[sandbox-environment]: Script name -> ex6_functions.sh"

#function declaration similiar to javascript - function <name> () 
function printGreeting() {
   #local variables are scoped only to the function 
   local greeting="Hello World"
   echo "$greeting"
}

#functions can also be declared without the function keyword
printStatus() {
  echo $(git status)
}

#execute functions by calling its name (no brackets)
printGreeting
printStatus 

echo "**********************************************"

getRandom() {
 return $RANDOM
}

getRandom
#get last function result
echo $?

echo "***********************************************"

argumentFunction() {
  echo "Function Arg 1: $1"
  echo "Function Arg 2: $2"
}

argumentFunction "eggs" "bread"


