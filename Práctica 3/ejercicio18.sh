#!/bin/bash

if [ $# -eq 1 ];
then
	while [ true ]
	do
		if [ $(who | cut -f 1 -d ' ' | grep $1) ];then
			echo "Usuario $1 logueado en el sistema"
			break
		fi
		echo "El usuario $1 no esta logeado"
		sleep 10s
	done
else
	echo "Debe pasarse un parametro."
fi
