#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Cantidad incorrecta de parametros"
	exit 2
fi
if [ -d $1 ]
then
	echo "El archivo existe y es un directorio."
elif [ -f $1 ]
	then
		echo "El archivo existe y es un archivo"
	else
		echo "El arhivo no existe, no es ni un archivo ni un directorio."
		mkdir $1
fi
