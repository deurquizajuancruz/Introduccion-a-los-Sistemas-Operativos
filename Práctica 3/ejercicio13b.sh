#!/bin/bash
function Listar() {
	ls
}

function DondeEstoy() {
	pwd
}

function QuienEsta() {
	w
}

function Salir() {
	exit
}

echo "Seleccione una opción:"
select opcion in Listar DondeEstoy QuienEsta Salir
do
	$opcion
done
