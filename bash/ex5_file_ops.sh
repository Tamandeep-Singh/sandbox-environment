#!/bin/bash

echo "[sandbox-environment]: Script name -> ex5_file_ops.sh"

#shopping list to write to file
SHOPPING_LIST=("bread" "eggs" "brownies" "milk")
SHOPPING_FILE="data/shopping_list.txt"

# >> operator appends to file, > overwrites a file
echo "Shopping List:" > "$SHOPPING_FILE"
for item in ${SHOPPING_LIST[@]}; do
    echo "Item: $item" >> "$SHOPPING_FILE"
done

echo "Wrote shopping data to $PWD/data/shopping_list.txt"

echo "*************************************************"

READ_FILE="data/read_file.txt"

#read entire file using cat 
echo  $(cat "$READ_FILE")

echo "*************************************************" 

#read file line by file
while read -r line; do
    echo "$line"
done < "$SHOPPING_FILE"
# < takes input such as file (so > used for output, < used for input)
