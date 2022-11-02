#!/bin/bash
function push() {
	let diml++
	pila[diml]=$1
}

function pop() {
	unset pila[diml]
	let diml--
}

function length() {
	echo ${#pila[@]}
}

function print() {
	echo ${pila[*]}
}

pila=()
diml=-1

push 10
push 20
pop
push 40
push a
echo "Tamaño del arreglo: `length`"
echo "Todos los elementos: `print`"
