#!/bin/bash
if [ $# -ne 2 ]
then
	echo "No se han pasado 2 argumentos."
	exit 1
fi
echo "El resultado de la suma es: `expr $1 + $2`"
echo "El resultado de la resta es: `expr $1 - $2`"
echo "El resultado de la multiplicación es: `expr $1 \* $2`"
if [ $1 -gt $2 ]
then
	echo "$1 es mayor que $2"
elif [ $2 -gt $1 ]
then
	echo "$2 es mayor que $1"
else
	echo "Los números son iguales"
fi
