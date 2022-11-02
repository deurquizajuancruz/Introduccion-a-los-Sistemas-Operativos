#!/bin/bash
array=()

function verArchivo(){
	for ((i=0;i<${#array[@]};i++))
	do
		if [ $1 = ${array[i]} ];
		then
			echo "Se encontro el archivo $1"
			return 0
		fi
	done
	echo "Archivo $1 no encontrado"
	return 5
}

function cantidadArchivos() {
	echo "La cantidad de archivos con terminacion .doc es ${#array[@]}"
}

function borrarArchivo() {
	pos=0
	for file in ${array[*]}
	do
		if [ $1 == ${array[pos]} ];
		then
			echo "Quiere eliminar el archivo $1 logicamente?"
			select opcion in Si No
			do	
			case $opcion in
			"Si")
				unset array[pos]
				return 0
			;;
			"No")
				unset array[pos]
				rm $1
				return 0
			;;
			*)
				echo "Opcion incorrecta"
				return 1
			esac
			done
		else
			let pos++
		fi
	done
	if [ $pos -ge ${#array[@]} ];
	then
		echo "Archivo $1 no encontrado"
		return 10
	fi
}

for file in $(find /home -name "*.doc")
do
	nombre=$(basename $file)
	array+=($nombre)
done

verArchivo ejercicioBORRAR.doc
cantidadArchivos
borrarArchivo ejercicioBORRAR.doc
cantidadArchivos
