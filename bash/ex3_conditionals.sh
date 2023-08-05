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


