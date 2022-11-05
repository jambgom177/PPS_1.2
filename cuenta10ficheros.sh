#!/bin/bash
#Haz un script llamado cuenta10ficheros.sh, que nos diga si en el directorio pasado 
#como parametro hay más de 10 ficheros o no, es decir, los directorios no deben 
#ser contados.

#Primero comprobamos que se nos pasa al menos un parámetro
if [ $# -ge 1 ]
then
    if [ -d $1 ] #Compruebo que el parametro pasado es un directorio
    then
        cont=0
        for dir in `ls $1` #Recorro todos los elementos del directorio
        do
            if [ -f $1/$dir ] #Compruebo si el elemento es un fichero regular
            then
                let "cont++" #Aumentamos el contador de ficheros regulares
            fi
        done

        if [ $cont -ge 10 ] #Comprobar si hay 10 o más ficheros regulares
        then
            echo "El directorio $1 contiene 10 o más ficheros regulares"
        else
            echo "El directorio $1 contiene menos de 10 ficheros regulares"
        fi
    else
        echo "ERROR. El parámetro pasado no es un directorio válido"
        sleep 2
        exit 2
    fi
else
    echo "ERROR. Se espera al menos 1 parámetro que sea un directorio válido"
    sleep 2
    exit 1
fi
echo "FIN DEL PROGRAMA"
read -p "Pulse INTRO para continuar"
clear

