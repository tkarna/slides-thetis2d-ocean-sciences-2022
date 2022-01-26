#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 input.pdf"
fi

input=$1
output=$(basename $input .pdf).png
echo "Converting $input to $output"
pdftoppm -png -r 600 $input test
mv test-1.png $output

