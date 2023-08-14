#!/bin/bash

echo "[sandbox-environment]: Script name -> ex4_loops.sh"

#no commas to separate elements, just whitespace 
TEST_ARRAY=("loki" "thor" "zeus")

#array for numbers
NUMBERS_ARRAY=(1 2 3 4 5 6 7 8 9 10)

#printing all elements of an array (use @ instead of index) 

echo "TEST_ARRAY contains the elements: ${TEST_ARRAY[@]}"

#print the element at index 1
echo "TEST_ARRAY at index one is: ${TEST_ARRAY[1]}"

echo "*******************************************"

#looping through an array (like foreach in C#) without the index
for item in ${TEST_ARRAY[@]}; do
    echo "Element is: $item"
done

#looping with the use of traditional for loop
TEST_ARRAY_LENGTH=${#TEST_ARRAY[@]}
for ((i=0; i<${TEST_ARRAY_LENGTH}; i++)); do
  echo "index is: $i, element is: ${TEST_ARRAY[$i]}"
done

echo "*******************************************"

#another method of looping within a certain range {START..END}
for i in {0..3}; do
  echo "Loop Number: $i"
done

echo "*******************************************"

#while loops
x=1
while [ $x -lt 5 ]; do
   echo "While loop at number: $x"
   x=$(($x + 1))
done
