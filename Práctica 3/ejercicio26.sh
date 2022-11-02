#!/bin/bash
if [ $# -ge 1 ];
then
	j=1
	inexistentes=0
	for file in $*
	do
		if [ `expr $j % 2` -ne 0 ]; # si es impar, verifico si existe en el sistema 
		then
			if [ -e $file ];
			then
				if [ -d $file ];
				then
					echo "Existe y es un directorio"
				elif [ -f $file ];
				then
					echo "Existe y es un archivo"
			.	fi
			else
				let inexistentes++
			fi
		fi
		let j++
	done
echo "Cantidad de archivos inexistentes: $inexistentes"
else
	echo "Cantidad incorrecta de parametros, se debe pasar por lo menos 1"
	exit 1
fi
<< Comentario
	/home/iso/Documentos/Facultad/practica3/ejemplos
	/home/iso/Documentos/Facultad/practica3/nada
	/home/iso/Documentos/Facultad/practica3/ejercicio14.sh
	/home/iso/Documentos/Facultad/practica3/noprocesa
	/home/iso/Descargas
	Existe y es un archivo
	Existe y es un directorio
	Inexistentes: 1
Comentario
