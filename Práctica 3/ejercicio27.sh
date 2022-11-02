#!/bin/bash
function inicializar() {
	arrayvacio=()
}

function agregar_elem() {
	arrayvacio+=($1)
}

function eliminar_elem() {
	if [ $1 -lt ${#arrayvacio[@]} ]; #si la posicion recibida es menor que el tamanio
	then
		unset arrayvacio[$1]
	fi
}

function longitud() {
	echo "Longitud del arreglo: ${#arrayvacio[@]}"
}

function imprimir(){
	echo "Contenido del arreglo: ${arrayvacio[@]}"
}

function inicializar_Con_Valores() {
	nuevoarray=()
	for ((i=0;i<$1;i++));
	do
		nuevoarray[i]=$2
	done
}

inicializar
agregar_elem Posicion0
agregar_elem Posicion1
agregar_elem Posicion2
eliminar_elem 1
eliminar_elem 4
agregar_elem Nuevo
imprimir
longitud
inicializar_Con_Valores 10 merepito
echo "Longitud nuevo areglo: ${#nuevoarray[@]}"
echo "Nuevo arreglo : ${nuevoarray[@]}"
