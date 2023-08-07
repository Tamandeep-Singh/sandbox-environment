#!/bin/bash

echo "[sandbox-environment]: Script name -> ex3_conditionals.sh"

echo "Enter fruit:"

read fruit

#basic if statement
#[] or [[]] in if statements is the test command
#always end conditional  with fi
#can use elif & else like in other languages

#use whitespace between condition and brackets 

if [[ $fruit == "Apple" ]]; then
    echo "An apple is a tasty fruit!"
elif [[ $fruit == "Orange" ]]; then
     echo "Wow, an orange!"
else 
    echo "Looks like the fruit isn't tasty"
fi

#use global env variable PWD to get full path for directory
test_dir="$PWD/ex3_bash_test"

#if the test directory does not exist then create it
if [[ ! -d $test_dir ]]; then 
   mkdir $test_dir
   echo "$test_dir was created"
else
    echo "$test_dir already exists"
fi

