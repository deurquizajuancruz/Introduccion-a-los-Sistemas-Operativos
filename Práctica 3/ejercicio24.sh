#!/bin/bash
v1=(4 80 67 32 9)
v2=(6 99 3 44 14)
for ((i=0;i<${#v1[@]};i++))
do
	echo "La suma de los elementos en la posicion $i de los vectores es `expr ${v1[i]} + ${v2[i]}`"
done
# 10 179 70 76 23 
