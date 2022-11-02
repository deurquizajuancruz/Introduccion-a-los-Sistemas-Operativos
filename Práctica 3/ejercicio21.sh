#!/bin/bash
function push() {
	pila[diml]=$1
	let diml++
}

function pop() {
	unset pila[diml-1]
	let diml--
}

function length() {
	echo ${#pila[@]}
}

function print() {
	echo ${pila[*]}
}

pila=()
diml=0

for ((i=1;i<11;i++))
do
	push $i
done

for ((i=0;i<3;i++))
do
	pop
done
echo "Tamanio del arreglo: `length`"
echo "Todos los elementos: `print`"
