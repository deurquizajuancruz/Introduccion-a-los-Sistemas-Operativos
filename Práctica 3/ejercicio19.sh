#!/bin/bash
echo "MENU DE COMANDOS"
echo "Ingrese la opcion a ejecutar: "
select opcion in `ls todosshell` Salir
do
	if [ $opcion = "Salir" ];
	then
		exit
	else
		./$opcion
	fi
done

