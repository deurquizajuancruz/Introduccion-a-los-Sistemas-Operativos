#!/bin/bash
<< Comentario
Debe ejecutarse con root porque tiene que acceder a todas las carpetas del sistema
De todas formas ni el root va a poder acceder a todas
No lo pude hacer ni con un ayudante => no anda
Comentario
echo ""> reportes.txt
if [ $# -eq 1 ];
then
	for usuario in $(cat /etc/passwd | cut -d ':' -f 1);
	do
		homeu=$(cat /etc/passwd | grep $usuario |cut -d ':' -f 6)
		encontro=`find $homeu -name "*$1" | wc -l`
		echo "Usuario: $usuario Encontrados: $encontro" >> reportes.txt
	done
else
	echo "Debe pasarse solo un parametro."
fi
