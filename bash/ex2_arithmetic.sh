#!/bin/bash

echo "[sandbox-environment]: Script name -> ex2_arithmetic.sh"

#format is let <varname>=<expression>
let result=9+4

#same principle with whitespace
let "format_result = 9 + 4"

echo "Unformatted result is: $result and formatted result is: $format_result"


#expr prints the result directly (useful for storing straight into variables)
expr 5 + 4

#can use $(( <expr>)) to store the result in a variable (double brackets)
a=$((4+6)) 

echo "Using $, the value of a is: $a"
