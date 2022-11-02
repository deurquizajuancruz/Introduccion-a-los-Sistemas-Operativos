#!/bin/bash
for ((i=1; i <101; i++))
do
	echo "Número: $i Cuadrado: $(expr $i \* $i)"
done
