#!/bin/bash

echo "Introduce una edad introducida entre 15 y 60 años: "
read year #Recogemos el año para introducir


if [ "$year" -eq "$year" ] 2> /dev/null #Comprobamos que sea un número
then
    if [ "$year" -ge "15" ] && [ "$year" -le "60" ] #comprobamos que sea mayor de 15 y menos de 60
    then
        #Recogemos el año actual y el año en el que nació esa persona
        actualYear=`date +%Y`
        birthYear=$(($actualYear-$year))
        #Mostramos el tercer dígito del año donde nació la persona mediante un comando dentro de una cadena
        echo "La edad es $year, el año en que nació $birthYear y la década `echo "$birthYear" | cut -c3`0's " 
    else
        echo "La edad introducida no está entre 15 y 60 años"
    fi
else
    echo "Los datos introducidos no son números"
fi