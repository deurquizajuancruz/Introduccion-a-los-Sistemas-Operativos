#!/bin/bash
calculadora() {
	if [ $3 = '+' ]; then
		echo $(expr $1 + $2)
	elif [ $3 = '-' ]; then
		echo `expr $1 - $2`
	elif [ $3 = 'x' ]; then
		echo `expr $1 \* $2`
	elif [ $3 = '/' ]; then
		if [ $2 -ne 0 ]; then
			echo `expr $1 / $2`
		fi
	fi
}
echo "Calculadora. Operaciones: 
Suma: +
Resta: -
Multiplicacion: x
Division: /"
echo "Ingrese el primer numero: "
read num1
echo "Ingrese el segundo numero: "
read num2
echo "Ingrese operacion: "
read op
echo "Resultado: $(calculadora $num1 $num2 $op)"
