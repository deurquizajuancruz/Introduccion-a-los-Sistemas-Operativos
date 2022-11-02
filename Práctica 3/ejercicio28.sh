#!/bin/bash
if [ $# -eq 1 ];
then
	if [ -e $1 ];
	then
		cantidad=0
		for file in $(ls $1); #para todo el contenido del directorio
		do
			if [ -f $file ] && [[ $(ls -l $file | cut -c 1-4) == *rw* ]] # Si es un archivo
			then
				let cantidad++
			fi
		done
		echo "La cantidad de archivos para el cual tiene permisos es de $cantidad"
	else
		echo "El directorio no existe"
		exit 4
	fi
else
	echo "No se ha recibido un parametro "
	exit 1
fi
