#!/bin/bash

if [ "$#" -eq "0" ] #Corroboramos que si no mete ningún parametro
then
    echo "No se ha introducido ningún parámetro"
else
    if [ -d "$1" ] #Corroboramos si existe el directorio
    then
        echo "El directorio con el nombre $1 existe"
        tar cvf copia_scripts_$(date +%d%m%Y).tar $1 #Generamos el fichero tar con todos los script
    else
        echo "El directorio con nombre $1 no existe"
    fi
fi