#!/bin/bash
grupo=$(cat /etc/group | grep "users" | cut -d ':' -f 4)
arreglo=($(echo $grupo | tr ',' ' '))
case $1 in
	"-b")
		if [ $2 -lt ${#arreglo[@]} ];
		then
			echo "Elemento de la posicion $2: ${arreglo[$2]}"
		else
			echo "ERROR: esa posicion no se encuentra en el vector"
		fi
	;;
	"-l")
		echo "Longitud del arreglo: ${#arreglo[@]}"
	;;
	"-i")
		echo "${arreglo[@]}"	
	;;
	*)
		echo "Parametro invalido"
	;;
esac
