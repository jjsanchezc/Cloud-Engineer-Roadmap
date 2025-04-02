#!/bin/bash
while read line
do
    case $line in
        1) echo "Has escogido el valor 1";;
        2) echo "Has escogido el valor 2";;
        *) echo "No has escogido un valor correcto";;
    esac
done < "${1:-/dev/stdin}"
# The ${1:-/dev/stdin} construct is a way to handle the case where the script is called without any arguments. In this case, the default value /dev/stdin is used as the input source. This allows the script to be used in a pipeline, for example.
