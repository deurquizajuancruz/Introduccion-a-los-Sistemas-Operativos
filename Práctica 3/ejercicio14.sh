#!/bin/bash
directorio=$1
opcion=$2
nombre=$3
if [ $# -ne 3 ]; then
	echo "Deben pasarse 3 parametros."
else
	if [ -d $1 ]; then
		if [ $opcion = '-a' ];	then
			for file in `ls $1`; do
				mv $1/$file $1/$file$3
			done
		elif [ $opcion = '-b' ]; then
			for file in `ls $1`; do
				mv $1/$file $1/$3$file
			done
		fi
	else
		echo "No existe ese directorio."
	fi
fi
