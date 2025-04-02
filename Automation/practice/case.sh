#! /bin/bash

echo "escoge un valor entre 1 o 2"
read valor

case $valor in
       1) echo "Has escogido el valor 1";;
       2) echo "Has escogido el valor 2";;
       *) echo "No has escogido un valor correcto";;
esac