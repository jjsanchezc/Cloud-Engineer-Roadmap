#! /bin/bash

echo "cual es tu nombre?"

read name

echo "cual es tu edad?"

read age
aleatorio=$(( $RANDOM % 15))
newage=$(( $age+$aleatorio ))

echo "hola ${name}, tu tienes ${age} años, el te haras rico a los ${newage}, el aleatorio es ${aleatorio} "


