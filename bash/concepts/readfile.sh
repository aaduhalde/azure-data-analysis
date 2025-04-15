#!/bin/bash

file='readfile.sh'
while read line; do
echo $line
done < $file
