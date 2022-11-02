#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre1 nombre2 apellido1 apellido2
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido1 $apellido2 $nombre1 $nombre2"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es: `pwd`"
echo "Su direcorio personal es: $HOME"
echo "El contenido de `pwd` es: `ls`"
echo "El espacio libre en el disco es de: `df -h`"
