#!/bin/bash
num=(10 40 50 23 21 40 65 62 8 7 9 19) # 6 impares
impares=0
for ((i=0;i<${#num[@]};i++))
do
	if [ `expr ${num[i]} % 2` -eq 0 ];
	then
		echo "El numero ${num[i]} es par"
	else
		let impares++
	fi	
done
echo "La cantidad de numeros impares del arreglo es de $impares"
