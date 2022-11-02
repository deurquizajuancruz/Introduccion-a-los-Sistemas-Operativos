#!/bin/bash
echo "Ingrese el primer número: "
read numero1
echo "Ingrese el segundo número: "
read numero2
echo "El resultado de la suma es: `expr $numero1 + $numero2`"
echo "El resultado de la resta es: `expr $numero1 - $numero2`"
echo "El resultado de la multiplicación es: `expr $numero1 \* $numero2`"
if [ $numero1 -gt $numero2 ]
then
	echo "$numero1 es mayor que $numero2"
elif [ $numero2 -gt $numero1 ]
then
	echo "$numero2 es mayor que $numero1"
else
	echo "Los numeros son iguales"
fi