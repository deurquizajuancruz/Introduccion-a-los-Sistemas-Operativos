#!/bin/bash

function productoria() {
	producto=1
	for ((i=0;i<${#num[@]};i++))
	do	
		let producto=($producto \* ${num[i]})
	done
	echo $producto
}


num=(10 3 5 7 9 3 5 4) #567.000
productoria
